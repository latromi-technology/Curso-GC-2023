-- Avalição geral dos alunos --
CREATE TABLE studentevaluations 
(
    id              SERIAL NOT NULL,
    studentid       INT NOT NULL,
    teacherid       INT NOT NULL,
    evaluationdate  DATE,
    score           SMALLINT,
    notes        	TEXT,
    CONSTRAINT pk_classattendances_id PRIMARY KEY (id),
    CONSTRAINT fk_classattendances_studentid FOREIGN KEY (studentid) REFERENCES students (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_classattendances_teacherid FOREIGN KEY (teacherid) REFERENCES teachers (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT ck_classattendances_score CHECK(score BETWEEN 1 AND 5)
);
COMMENT ON TABLE studentevaluations IS 'Essa tabela permite ao professor fazer avaliações gerais de cada aluno em datas específicas.';
COMMENT ON COLUMN studentevaluations.id IS 'ID da avaliação';
COMMENT ON COLUMN studentevaluations.studentid IS 'ID do aluno';
COMMENT ON COLUMN studentevaluations.teacherid IS 'ID do professor';
COMMENT ON COLUMN studentevaluations.evaluationdate IS 'Data da avaliação';
COMMENT ON COLUMN studentevaluations.score IS 'Uma nota de 1 a 5 representando o engajamento do aluno.';
COMMENT ON COLUMN studentevaluations.notes IS 'Campo livre para observações';