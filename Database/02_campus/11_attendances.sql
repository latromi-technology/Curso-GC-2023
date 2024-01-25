-- Registro de Frequência dos alunos --
CREATE TABLE attendances 
(
    id                  SERIAL NOT NULL,
    studentid           INT NOT NULL,
    classdayid          INT NOT NULL,
    ispresent           BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT pk_attendances_id PRIMARY KEY (id),
    CONSTRAINT fk_attendances_studentid FOREIGN KEY (studentid) REFERENCES students(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_attendances_classdayid FOREIGN KEY (classdayid) REFERENCES classdays(id) ON DELETE CASCADE ON UPDATE CASCADE
);
COMMENT ON TABLE attendances IS 'Essa tabela permite que o professor faça o registro de frequência dos alunos';
COMMENT ON COLUMN attendances.id IS 'ID do registro de frequência';
COMMENT ON COLUMN attendances.studentid IS 'ID do aluno';
COMMENT ON COLUMN attendances.classdayid IS 'ID referente ao dia de aula para a qual a frequência está sendo registrada';
COMMENT ON COLUMN attendances.ispresent IS 'Um campo booleano que indica se o aluno estava presente ou ausente na aula na data especificada';