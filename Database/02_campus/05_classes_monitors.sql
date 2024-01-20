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