-- Conjuntos de Links --
CREATE TABLE linksets
(
    id      SERIAL NOT NULL,
    name    VARCHAR(100),
    CONSTRAINT pk_linksets_id PRIMARY KEY (id)
);
COMMENT ON TABLE linksets IS 'Cada linha da tabela representa um conjunto de links.';
COMMENT ON COLUMN linksets.id IS 'Id do conjunto de links';
COMMENT ON COLUMN linksets.name IS 'Nome do conjunto de links (opcional)';

CREATE TABLE linksets_links
(
    linksetid      SERIAL NOT NULL,
    name           VARCHAR(20) NOT NULL,
    url            TEXT ,
    CONSTRAINT pk_linksetslinks_linksetid_name PRIMARY KEY (linksetid, name),
    CONSTRAINT fk_linksetslinks_linksetid FOREIGN KEY (linksetid) REFERENCES linksets (id) ON DELETE CASCADE ON UPDATE CASCADE
);
COMMENT ON TABLE linksets_links IS 'URLs que fazem parte do conjunto de links';
COMMENT ON COLUMN linksets_links.linksetid IS 'Id conjunto de links';
COMMENT ON COLUMN linksets_links.name IS 'Nome do link. Exemplo: LinkedIn, Github';
COMMENT ON COLUMN linksets_links.url IS 'URL do link';