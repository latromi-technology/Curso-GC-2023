CREATE TABLE classdays
(
    id              SERIAL NOT NULL,
    name            VARCHAR(100) NOT NULL,
    classid         INT NOT NULL,
    classdate       DATE NOT NULL,
    notes           TEXT,
    attendancecode  VARCHAR(32),
    CONSTRAINT pk_classdays_id PRIMARY KEY (id),
    CONSTRAINT fk_classdays_classid FOREIGN KEY (classid) REFERENCES classes(id) ON DELETE CASCADE ON UPDATE CASCADE
);
COMMENT ON TABLE classdays IS 'Essa tabela representa um dia de aula. Ela é usada pelo professor para planejar a aula.';
COMMENT ON COLUMN classdays.id IS 'Identificador único do dia de aula';
COMMENT ON COLUMN classdays.name IS 'Nome do dia de aula. Usado para facilitar a identificação. Exemplo: "Conteúdo XYZ (1/3)"';
COMMENT ON COLUMN classdays.classid IS 'ID da turma';
COMMENT ON COLUMN classdays.classdate IS 'Data da aula';
COMMENT ON COLUMN classdays.notes IS 'Texto livre para adicionar observações sobre aula.';
COMMENT ON COLUMN classdays.attendancecode IS 'Código UUID (sem traços) gerado para realizar a leituira do QR Code de presença.';
