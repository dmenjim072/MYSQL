CREATE DATABASE IF NOT EXISTS BDCLASES;
USE BDCLASES;

/*Variables 
INT
DECIMAL(6,2) -> numero total, numero de decimales
CHAR -> (longitud fija)
VARCHAR -> (longitud variable)
DATE
*/

CREATE TABLE IF NOT EXISTS deptos
(	
	coddepto INT UNSIGNED NOT NULL, -- primary key -- (unsigned le quita signo negativo, not null para que no sea valor nulo)
    nomdepto VARCHAR(30),
    CONSTRAINT pk_deptos PRIMARY KEY (coddepto)
);

CREATE TABLE IF NOT EXISTS profesorado
(
	coddepto INT UNSIGNED NOT NULL, -- PRIMARY KEY
    codprof INT UNSIGNED NOT NULL, -- PRIMARY KEY
    nomprof VARCHAR(30) NOT NULL,
    ape1prof VARCHAR(30) NOT NULL,
    ape2prof VARCHAR(30) NOT NULL,
    fecincorporacion date NULL,
    codpostal CHAR(5) NULL,
    telefono CHAR(9) NULL,
    CONSTRAINT pk_deptos PRIMARY KEY (coddepto, codprof), -- restriccion de clave primaria
    CONSTRAINT fk_profesorado_deptos FOREIGN KEY (coddepto) REFERENCES deptos (coddepto) -- restriccion clave foranea
		ON DELETE NO ACTION ON UPDATE CASCADE
);
