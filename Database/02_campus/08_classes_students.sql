-- Alunos da Turma --
CREATE TABLE classes_students
(
    classid         INT NOT NULL,
    studentid       INT NOT NULL,
    CONSTRAINT pk_classesstudents_classid_studentid PRIMARY KEY (classid, studentid),
    CONSTRAINT fk_classesstudents_classid FOREIGN KEY (classid) REFERENCES classes (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_classesstudents_monitorid FOREIGN KEY (studentid) REFERENCES students (id) ON DELETE CASCADE ON UPDATE CASCADE
);
COMMENT ON TABLE classes_students IS 'Essa tabela faz a associação dos alunos a uma turma.';
COMMENT ON COLUMN classes_students.classid IS 'ID da turma';
COMMENT ON COLUMN classes_students.studentid IS 'ID do aluno';
