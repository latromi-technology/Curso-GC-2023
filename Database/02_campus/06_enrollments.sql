-- Matrículas de alunos --
CREATE TABLE enrollments 
(
    id              SERIAL NOT NULL,
    firstname       VARCHAR(100) NOT NULL,
    lastname        VARCHAR(100) NOT NULL,
    email           VARCHAR(255) NOT NULL,
    phone           VARCHAR(20), 
    enrollmentdate  DATE NOT NULL,
    classid         INT NOT NULL,
    status          SMALLINT NOT NULL DEFAULT 0,
    notes           TEXT,
    CONSTRAINT pk_enrollments_id PRIMARY KEY (id),
    CONSTRAINT fk_enrollments_classid FOREIGN KEY (classid) REFERENCES classes (id) ON DELETE RESTRICT ON UPDATE CASCADE,
    -- A constraint a seguir garante que o status sempre vai respeitar o intervalo esperado
    CONSTRAINT ck_enrollments_status CHECK (status BETWEEN 0 AND 2)
);
COMMENT ON TABLE enrollments IS 'Inscrições para os turmas.';
COMMENT ON COLUMN enrollments.id IS 'ID da inscrição';
COMMENT ON COLUMN enrollments.firstname IS 'Primeiro nome do inscrito';
COMMENT ON COLUMN enrollments.lastname IS 'Sobrenome do inscrito';
COMMENT ON COLUMN enrollments.email IS 'Endereço de e-mail do inscrito';
COMMENT ON COLUMN enrollments.phone IS 'Número de telefone com DDD do inscrito';
COMMENT ON COLUMN enrollments.enrollmentdate IS 'Data da inscrição';
COMMENT ON COLUMN enrollments.classid IS 'ID da turma';
COMMENT ON COLUMN enrollments.status IS 'Situação da inscrição: 0-registrado, 1-aprovado, 2-rejeitado';
COMMENT ON COLUMN enrollments.notes IS 'Campo livre para observações';