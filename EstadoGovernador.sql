CREATE TABLE tbGovernador (
  idtbGovernador INTEGER NOT NULL,
  nome VARCHAR2(100) NOT NULL,
  email VARCHAR2(200) ,
  cpf char(11),
  CONSTRAINT tbgovernador_pk PRIMARY KEY (idtbGovernador)
);

CREATE TABLE tbEstado (
  idtbEstado CHAR(2) NOT NULL,
  tbGovernador_idtbGovernador INTEGER NOT NULL,
  CONSTRAINT tbEstado_pk PRIMARY KEY (idtbEstado),
  CONSTRAINT tbgobernador_fk FOREIGN KEY (tbGovernador_idtbGovernador) REFERENCES tbGovernador(idtbGovernador)
);


