-- Turmas --
CREATE TABLE classes
(
    id          SERIAL NOT NULL,
    courseid    INT NOT NULL,
    teacherid   INT NOT NULL,
    startdate   DATE,
    enddate     DATE,
    schedule    TEXT,
    CONSTRAINT pk_classes_id PRIMARY KEY (id),
    CONSTRAINT fk_classes_courseid FOREIGN KEY (courseid) REFERENCES courses(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_classes_teacherid FOREIGN KEY (teacherid) REFERENCES teachers(id) ON DELETE RESTRICT ON UPDATE CASCADE,
);
COMMENT ON TABLE classes IS 'Cadastro de Turmas';
COMMENT ON COLUMN classes.id IS 'ID da turma';
COMMENT ON COLUMN classes.teacherid IS 'ID do professor';
COMMENT ON COLUMN classes.startdate IS 'Data de início da turma';
COMMENT ON COLUMN classes.enddate IS 'Data de fim da turma';
COMMENT ON COLUMN classes.schedule IS 'Campos para descrever dias e horários das aulas';

-- Monitores da Turma --
CREATE TABLE classes_monitors
(
    classid     INT NOT NULL,
    monitorid   INT NOT NULL,
    CONSTRAINT pk_classesmonitors_classid_monitorid PRIMARY KEY (classid, monitorid),
    CONSTRAINT fk_classesmonitors_classid FOREIGN KEY (classid) REFERENCES classes (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_classesmonitors_monitorid FOREIGN KEY (monitorid) REFERENCES monitors (id) ON DELETE CASCADE ON UPDATE CASCADE
);
COMMENT ON TABLE classes_monitors IS 'Monitores que atuam na turma';
COMMENT ON COLUMN classes_monitors.classid IS 'ID da turma';
COMMENT ON COLUMN classes_monitors.monitorid IS 'ID do monitor';