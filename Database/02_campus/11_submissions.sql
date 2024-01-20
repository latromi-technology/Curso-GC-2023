-- Entrea de atividades --
CREATE TABLE submissions
(
    id                  SERIAL NOT NULL,
    studentid           INT NOT NULL,
    activityid          INT NOT NULL,
    submissiondate      DATE,
    submittedfileurl    TEXT,
    score               DECIMAL(3,1),
    feedback            TEXT,
    notes               TEXT,
    CONSTRAINT pk_submissions_id PRIMARY KEY (id),
    CONSTRAINT fk_submissions_studentid FOREIGN KEY (studentid) REFERENCES students (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_submissions_activityid FOREIGN KEY (activityid) REFERENCES activities (id) ON DELETE CASCADE ON UPDATE CASCADE
);
COMMENT ON TABLE submissions is 'Nessa tabela são gravadas as atividades entregues pelos alunos';
COMMENT ON COLUMN submissions.id is 'ID da avaliação';
COMMENT ON COLUMN submissions.studentidid is 'ID do estudante';
COMMENT ON COLUMN submissions.activityid is 'ID da atividade';
COMMENT ON COLUMN submissions.submissiondate is 'Data de entrega do trabalho';
COMMENT ON COLUMN submissions.submittedfileurl is 'URL do arquivo entregue';
COMMENT ON COLUMN submissions.score is 'Nota do trabalho entregue';
COMMENT ON COLUMN submissions.feedback is 'Feedback em relação ao trabalho entregue';
COMMENT ON COLUMN submissions.notes is 'Texto livre para observações do avaliador';