-- Professores --
CREATE TABLE teachers
(
    id              SERIAL NOT NULL,
    personid        INT NOT NULL,
    subjecttaught   VARCHAR(100),
    CONSTRAINT pk_teachers_id PRIMARY KEY (id),
    CONSTRAINT fk_teachers_personid FOREIGN KEY (personid) REFERENCES people(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
COMMENT ON TABLE teachers IS 'Cadastro de professores';
COMMENT ON COLUMN teachers.id IS 'ID do professor';
COMMENT ON COLUMN teachers.personid IS 'ID do professor no cadastro de pessoas';
COMMENT ON COLUMN teachers.subjecttaught IS 'Assunto ensinado';