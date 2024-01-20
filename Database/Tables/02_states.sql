-- Estados --
CREATE TABLE states
(
    id              SERIAL NOT NULL,
    countryid       INT NOT NULL,
    name            VARCHAR(100) NOT NULL,
    alpha2          VARCHAR(2) NOT NULL,
    CONSTRAINT pk_state_id PRIMARY KEY (id),
    CONSTRAINT uk_state_countryid_alpha2 UNIQUE (countryid, alpha2),
    CONSTRAINT fk_state_countryid FOREIGN KEY (countryid) REFERENCES countries(id) ON DELETE RESTRICT ON UPDATE CASCADE,
);
-- O comando abaixo insere todos os estados brasileiros --
WITH lines AS(
SELECT regexp_split_to_table (
'35,São Paulo, SP
41,Paraná, PR
42,Santa Catarina, SC
43,Rio Grande do Sul, RS
50,Mato Grosso do Sul, MS
11,Rondônia, RO
12,Acre, AC
13,Amazonas, AM
14,Roraima, RR
15,Pará, PA
16,Amapá, AP
17,Tocantins, TO
21,Maranhão, MA
24,Rio Grande do Norte, RN
25,Paraíba, PB
26,Pernambuco, PE
27,Alagoas, AL
28,Sergipe, SE
29,Bahia, BA
31,Minas Gerais, MG
33,Rio de Janeiro, RJ
51,Mato Grosso, MT
52,Goiás, GO
53,Distrito Federal, DF
22,Piauí, PI
23,Ceará, CE
32,Espírito Santo, ES', '\n') line
)
INSERT INTO states(name, alpha2, countryid)
SELECT
	TRIM(SPLIT_PART(line, ',', 2)) AS name,
	TRIM(SPLIT_PART(line, ',', 3)) AS alpha2,
	c.id
FROM lines
CROSS JOIN  countries c;