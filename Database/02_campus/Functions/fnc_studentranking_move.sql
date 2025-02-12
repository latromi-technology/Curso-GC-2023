
SET SEARCH_path = campus;
CREATE OR REPLACE FUNCTION fnc_studentranking_move (p_studentranking_id INT, p_studentid INT, p_direction VARCHAR(4), p_position INT DEFAULT NULL)
    RETURNS INT AS
$BODY$
DECLARE
    r RECORD;
    n INT;
    t INT;
    v_result INT;
BEGIN

    IF COALESCE(p_studentranking_id, 0)=0 THEN 
        RAISE EXCEPTION 'Parâmetro "p_studentranking_id" precisa ser informado.';
    END IF;

    IF COALESCE(p_studentid, 0)=0 THEN 
        RAISE EXCEPTION 'Parâmetro "p_studentid" precisa ser informado.';
    END IF;

    IF COALESCE(p_direction, '') NOT IN ('UP', 'DOWN') THEN 
        RAISE EXCEPTION 'O Valor do parâmetro "p_direction" precisa ser "UP" ou "DOWN".';
    END IF;

    -- Posição atual
    SELECT INTO v_result, n id, position
    FROM campus.studentrankings_students
    WHERE studentrankingid = p_studentranking_id
    AND studentid = p_studentid;

    IF NOT FOUND THEN
        SELECT INTO n COALESCE(MAX(position)+2,1)
        FROM campus.studentrankings_students
        WHERE studentrankingid = p_studentranking_id;

        INSERT INTO campus.studentrankings_students (studentrankingid, studentid, position)
        VALUES (p_studentranking_id, p_studentid, n+1)
        RETURNING id INTO v_result;

    END IF;

    -- Define uma posição especifica
    IF COALESCE(p_position,0) > 0 THEN
        FOR r IN
            SELECT id
            FROM campus.studentrankings_students
            WHERE studentrankingid = p_studentranking_id
            AND position >= p_position
            ORDER BY position
        LOOP
            UPDATE campus.studentrankings_students
            SET position = position+1
            WHERE id = r.id;
        END LOOP;

        UPDATE campus.studentrankings_students
        SET position = p_position
        WHERE studentrankingid = p_studentranking_id
        AND studentid = p_studentid;

        RETURN v_result;
    END IF;

    -- Move para cima ou para baixo
    IF p_direction = 'UP' THEN
        -- Sobe uma posição
        UPDATE campus.studentrankings_students
        SET position = GREATEST(1, CASE WHEN studentid = p_studentid THEN n-1 WHEN position = n-1 THEN n END)
        WHERE studentrankingid = p_studentranking_id
        AND (position = n-1 OR studentid = p_studentid); 
    ELSIF p_direction = 'DOWN' THEN
        -- Total
        SELECT INTO t COUNT(id)
        FROM campus.studentrankings_students
        WHERE studentrankingid = p_studentranking_id;
        -- Desce uma posição
        UPDATE campus.studentrankings_students
        SET position = LEAST(t, CASE WHEN studentid = p_studentid THEN n+1 WHEN position = n+1 THEN n END)
        WHERE studentrankingid = p_studentranking_id
        AND (position = n+1 OR studentid = p_studentid); 
    END IF;

    RETURN v_result;
END;
$BODY$
LANGUAGE plpgsql;