CREATE DATABASE IF NOT EXISTS fs2024_bd01;
USE fs2024_bd01;

CREATE TABLE clientes(
	codigo_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	direccion VARCHAR(150)
);

CREATE TABLE lineas_telefonica(
	codigo_lineas INT AUTO_INCREMENT,
	numero INT (8),
	plan VARCHAR (50),
	cantidad_minutos SMALLINT,
	cantidad_datos TINYINT,
	precio FLOAT (8,2),
	codigo_fuente  INT,
	CONSTRAINT pk_codigo_linea PRIMARY KEY (codigo_linea),
	CONSTRAINT fk_codigo_cliente FOREIGN KEY (codigo_cliente)
	REFERENCES clientes(codigo_cliente) 
	ON UPDATE CASCADE ON DELETE CASCADE

);


