CREATE SEQUENCE seq_eventos_id START 1;

CREATE TABLE eventos_tareas (
    id BIGINT PRIMARY KEY DEFAULT nextval('seq_eventos_id'),
    tarea_id BIGINT,
    tipo_evento VARCHAR(50),
    datos_evento JSON,
    fecha_evento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (tarea_id) REFERENCES tareas(id) ON DELETE SET NULL
);
