CREATE SEQUENCE seq_usuarios_id START 1;

CREATE TABLE usuarios (
    id BIGINT PRIMARY KEY DEFAULT nextval('seq_usuarios_id'),
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(100) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
