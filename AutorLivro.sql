CREATE TABLE tbAutor (
  idtbAutor INTEGER NOT NULL ,
  nome VARCHAR(200) NULL,
  email VARCHAR(250) NULL,
  telefone VARCHAR(50) NULL,
  PRIMARY KEY(idtbAutor)
);

CREATE TABLE tbLivro (
  idtbLivro INTEGER NOT NULL,
  tbAutor_idtbAutor INTEGER NOT NULL,
  isbn INTEGER NULL,
  titulo VARCHAR(200) NULL,
  edicao INTEGER NULL,
  ano_lancamento INTEGER NULL,
  CONSTRAINT livro_pk PRIMARY KEY (idtbLivro),
  CONSTRAINT livro_autor_fk FOREIGN KEY (tbAutor_idtbAutor) REFERENCES tbAutor(idtbAutor) 
);


