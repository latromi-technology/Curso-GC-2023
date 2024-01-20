-- Monitores --
CREATE TABLE monitors
(
    id                  SERIAL NOT NULL,
    personid            INT NOT NULL,
    dutiesdescription   TEXT,
    CONSTRAINT pk_monitors_id PRIMARY KEY (id),
    CONSTRAINT fk_monitors_personid FOREIGN KEY (personid) REFERENCES person(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
COMMENT ON TABLE teachers IS 'Cadastro de monitores';
COMMENT ON COLUMN teachers.id IS 'ID do monitor';
COMMENT ON COLUMN teachers.personid IS 'ID do monitor no cadastro de pessoas';
COMMENT ON COLUMN teachers.dutiesdescription IS 'Descrição das funções';