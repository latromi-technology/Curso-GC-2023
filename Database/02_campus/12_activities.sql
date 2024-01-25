-- Atividades do Curso --
CREATE TABLE activities
(
    id              SERIAL NOT NULL,
    classid         INT NOT NULL,
    name            VARCHAR(100) NOT NULL,
    description     TEXT,
    startdate       DATE NOT NULL,
    enddate         DATE,
    duedate         DATE,
    maxscore        INT NOT NULL DEFAULT 10,
    CONSTRAINT pk_activities_id PRIMARY KEY (id),
    CONSTRAINT fk_activities_classid FOREIGN KEY (classid) REFERENCES classes (id) ON DELETE CASCADE ON UPDATE CASCADE
);
COMMENT ON TABLE activities IS 'Essa tabela permite que o professor registre as atividades submetidas aos alunos.';
COMMENT ON COLUMN activities.id IS 'ID do item do cronograma';
COMMENT ON COLUMN activities.classid IS 'ID da turma';
COMMENT ON COLUMN activities.name IS 'Nome da atividade';
COMMENT ON COLUMN activities.description IS 'Descrição detalhada da atividade';
COMMENT ON COLUMN activities.startdate IS 'Data do início da atividade';
COMMENT ON COLUMN activities.enddate IS 'Data do fim da atividade';
COMMENT ON COLUMN activities.duedate IS 'Data de vencimento ou prazo para a atividade';
COMMENT ON COLUMN activities.maxscore IS 'A pontuação máxima atribuída à atividade.';


