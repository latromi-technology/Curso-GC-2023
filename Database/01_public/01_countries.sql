-- Países --
CREATE TABLE countries 
(
    id              SERIAL NOT NULL,
    name            VARCHAR(100) NOT NULL,
    alpha2          VARCHAR(2) NOT NULL,
    CONSTRAINT pk_country_id PRIMARY KEY (id),
    CONSTRAINT uk_country_alpha2 UNIQUE(alpha2)
);
-- Insere o País Brasil --
INSERT INTO countries  (alpha2, name) VALUES ('BR', 'Brasil');
