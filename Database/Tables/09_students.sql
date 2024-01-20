-- Estudantes  --
CREATE TABLE students
(
    id              SERIAL NOT NULL,
    personid        INT NOT NULL,
    courseid        INT NOT NULL,
    enrollmentid    INT NOT NULL,
    notes           TEXT,
    CONSTRAINT pk_students_id PRIMARY KEY (id),
    CONSTRAINT fk_students_personid FOREIGN KEY (personid) REFERENCES person (id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_students_courseid FOREIGN KEY (courseid) REFERENCES courses (id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_students_enrollment FOREIGN KEY (enrollmentid) REFERENCES enrollments (id) ON DELETE RESTRICT ON UPDATE CASCADE
);
COMMENT ON TABLE students IS 'Cadastro de alunos. O cadastro de aluno é gerado após a aprovação da incrição';
COMMENT ON COLUMN students.id IS 'ID do aluno';
COMMENT ON COLUMN students.personid IS 'ID do aluno no cadastro de pessoas';
COMMENT ON COLUMN students.courseid IS 'ID do curso';
COMMENT ON COLUMN students.enrollmentid IS 'ID da inscrição';
COMMENT ON COLUMN students.notes IS 'Campo livre para observações';