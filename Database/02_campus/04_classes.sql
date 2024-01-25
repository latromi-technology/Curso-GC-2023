-- Cadastro de turmas --
CREATE TABLE classes
(
    id                  SERIAL NOT NULL,
    name                VARCHAR(20) NOT NULL,
    courseid            INT NOT NULL,
    teacherid           INT NOT NULL,
    startdate           DATE,
    enddate             DATE,
    scheduledescription TEXT,
    CONSTRAINT pk_classes_id PRIMARY KEY (id),
    CONSTRAINT fk_classes_courseid FOREIGN KEY (courseid) REFERENCES courses(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_classes_teacherid FOREIGN KEY (teacherid) REFERENCES teachers(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
COMMENT ON TABLE classes IS 'Cadastro de Turmas';
COMMENT ON COLUMN classes.id IS 'ID da turma';
COMMENT ON COLUMN classes.name IS 'Nome da turma. Exemplo: Turma 2023';
COMMENT ON COLUMN classes.teacherid IS 'ID do professor';
COMMENT ON COLUMN classes.startdate IS 'Data de início da turma';
COMMENT ON COLUMN classes.enddate IS 'Data de fim da turma';
COMMENT ON COLUMN classes.scheduledescription IS 'Campo livre para descrever dias e horários das aulas';


