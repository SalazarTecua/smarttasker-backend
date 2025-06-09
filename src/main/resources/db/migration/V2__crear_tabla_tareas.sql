CREATE SEQUENCE seq_tareas_id START 1;

CREATE TABLE tareas (
    id BIGINT PRIMARY KEY DEFAULT nextval('seq_tareas_id'),
    titulo VARCHAR(100) NOT NULL,
    descripcion TEXT,
    prioridad VARCHAR(20) CHECK (prioridad IN ('alta', 'media', 'baja')),
    estado VARCHAR(20) DEFAULT 'pendiente' CHECK (estado IN ('pendiente', 'completada')),
    fecha_limite DATE,
    usuario_id BIGINT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);
