-- Professores --
CREATE TABLE teachers
(
    id              SERIAL NOT NULL,
    personid        INT NOT NULL,
    subjecttaught   VARCHAR(100),
    startdate       DATE,
    enddate         DATE,
    CONSTRAINT pk_teachers_id PRIMARY KEY (id),
    CONSTRAINT fk_teachers_personid FOREIGN KEY (personid) REFERENCES people(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
COMMENT ON TABLE teachers IS 'Cadastro de professores';
COMMENT ON COLUMN teachers.id IS 'ID do professor';
COMMENT ON COLUMN teachers.personid IS 'ID do professor no cadastro de pessoas';
COMMENT ON COLUMN teachers.subjecttaught IS 'Assunto ensinado';
COMMENT ON COLUMN teachers.startdate IS 'Data em que o professor começou a trabalhar na escola';
COMMENT ON COLUMN teachers.enddate IS 'Data em que o professor deixou de trabalhar na escola';