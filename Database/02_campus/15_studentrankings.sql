CREATE TABLE studentrankings
(
    id SERIAL NOT NULL,
    name TEXT NOT NULL,
    classid INT,
    CONSTRAINT pk_studentranking_id PRIMARY KEY (id),
    CONSTRAINT fk_studentranking_classid FOREIGN KEY (classid) 
        REFERENCES classes (id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);
COMMENT ON TABLE studentrankings IS 'Ranqueamento de estudantes. Com essa tabela, é possível criar grupos de ranqueamentos de alunos para propósitos específicos.';
COMMENT ON COLUMN studentrankings.id IS 'Identificador do ranqueamento';
COMMENT ON COLUMN studentrankings.name IS 'Nome do ranqueamento';
COMMENT ON COLUMN studentrankings.classid IS 'Identificador da turma';

CREATE TABLE studentrankings_students
(
    id                  SERIAL NOT NULL,
    studentrankingid    INT NOT NULL,
    studentid           INT NOT NULL,
    position            INT NOT NULL,
    CONSTRAINT pk_studentrankingstudents_id PRIMARY KEY (id),
    CONSTRAINT uk_studentrankingstudents_studentrankingid_studentid UNIQUE(studentrankingid, studentid),
    CONSTRAINT fk_studentrankingstudents_studentrankid FOREIGN KEY (studentrankingid)
        REFERENCES studentrankings(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
    CONSTRAINT fk_studentrankingstudents_studentid FOREIGN KEY (studentid)
        REFERENCES students(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);
COMMENT ON TABLE studentrankings_students IS 'Estudantes que fazem parte do ranqueamento.'
COMMENT ON COLUMN studentrankings_students.id IS 'Identificador do estudante no ranking.'
COMMENT ON COLUMN studentrankings_students.studentrankingid IS 'Identificador do grupo de ranqueamento.'
COMMENT ON COLUMN studentrankings_students.studentid IS 'Identificador do estudante.'