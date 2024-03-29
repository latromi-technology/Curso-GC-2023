-- Cadastro de Pessoas --
CREATE TABLE people 
(
    id                  SERIAL NOT NULL,
    firstname           VARCHAR(100) NOT NULL,
    lastname            VARCHAR(100),
    birthdate           DATE,
    email               VARCHAR(255),
    phone               VARCHAR(20), 
    stateid             INT,
    city                VARCHAR(100),
    address             VARCHAR(255),
    zipcode             VARCHAR(10),
    linksetid           INT,
    creationtime        TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_people_id PRIMARY KEY (id),
    CONSTRAINT fk_people_stateid FOREIGN KEY (stateid) REFERENCES states(id) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_people_linksetid FOREIGN KEY (linksetid) REFERENCES linksets(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
COMMENT ON TABLE people IS 'Cadastro de Pessoas';
COMMENT ON COLUMN people.id IS 'ID do cadastro';
COMMENT ON COLUMN people.firstname IS 'Primeiro nome';
COMMENT ON COLUMN people.lastname IS 'Sobrenome';
COMMENT ON COLUMN people.birthdate IS 'Data de aniversário';
COMMENT ON COLUMN people.email IS 'Endereço de e-mail';
COMMENT ON COLUMN people.phone IS 'Número de telefone com DDD e código de país';
COMMENT ON COLUMN people.stateid IS 'ID do estado';
COMMENT ON COLUMN people.city IS 'Nome da Cidade';
COMMENT ON COLUMN people.address IS 'Endereço';
COMMENT ON COLUMN people.zipcode IS 'CEP';
COMMENT ON COLUMN people.creationtime IS 'Data e hora de criação do registro';
COMMENT ON COLUMN people.linksetid IS 'Id do conjunto de links';