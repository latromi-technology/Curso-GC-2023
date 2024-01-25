-- Monitores --
CREATE TABLE monitors
(
    id                  SERIAL NOT NULL,
    personid            INT NOT NULL,
    dutiesdescription   TEXT,
    startdate           DATE,
    enddate             DATE,
    CONSTRAINT pk_monitors_id PRIMARY KEY (id),
    CONSTRAINT fk_monitors_personid FOREIGN KEY (personid) REFERENCES people(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
COMMENT ON TABLE monitors IS 'Cadastro de monitores';
COMMENT ON COLUMN monitors.id IS 'ID do monitor';
COMMENT ON COLUMN monitors.personid IS 'ID do monitor no cadastro de pessoas';
COMMENT ON COLUMN monitors.dutiesdescription IS 'Descrição das funções';
COMMENT ON COLUMN monitors.startdate IS 'Data em que o monitor começou a trabalhar na escola';
COMMENT ON COLUMN monitors.enddate IS 'Data em que o monitor deixou de trabalhar na escola';