-- Cursos --
CREATE TABLE courses
(
    id          SERIAL NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    CONSTRAINT pk_courses_id PRIMARY KEY (id),
    CONSTRAINT uk_courses_name UNIQUE (name)
);
COMMENT ON TABLE courses IS 'Cadastro dos cursos';
COMMENT ON COLUMN courses.id IS 'ID do curso';
COMMENT ON COLUMN courses.name IS 'Nome do curso. Exemplos: Programação, Marketing, Gestão e Vendas, UX';
COMMENT ON COLUMN courses.description IS 'Descrição do curso';