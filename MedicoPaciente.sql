CREATE TABLE tbPessoa (
  idtbPessoa INTEGER NOT NULL ,
  nome VARCHAR(150) NULL,
  endereco VARCHAR(200) NULL,
  cidade VARCHAR(100) NULL,
  estado CHAR(2) NULL,
  sexo CHAR(1) NULL,
  CONSTRAINT tbPessoa_pk PRIMARY KEY (idtbPessoa)
);

CREATE TABLE tbPaciente (
  tbPessoa_idtbPessoa INTEGER NOT NULL,
  nrSUS INTEGER NOT NULL ,
  convenio VARCHAR(100) NULL,
  CONSTRAINT tbPaciente_pk PRIMARY KEY (tbPessoa_idtbPessoa),
  CONSTRAINT tbPessoapaciente_fk FOREIGN KEY (tbPessoa_idtbPessoa) REFERENCES tbPessoa(idtbPessoa)
);

CREATE TABLE tbMedico (
  tbPessoa_idtbPessoa INTEGER NOT NULL,
  crm VARCHAR(10) NOT NULL ,
  CONSTRAINT tbMedico_pk PRIMARY KEY (tbPessoa_idtbPessoa),
  CONSTRAINT tbPessoaMedico_fk FOREIGN KEY (tbPessoa_idtbPessoa) REFERENCES tbPessoa(idtbPessoa)
);

CREATE TABLE tbAtendimento (
  idtbAtendimento INTEGER NOT NULL ,
  tbMedico_tbPessoa_idtbPessoa INTEGER NOT NULL,
  tbPaciente_tbPessoa_idtbPessoa INTEGER NOT NULL,
  paciente INTEGER ,
  medico INTEGER ,
  data_atendimento DATE,
  finalizado CHAR(1),
  CONSTRAINT tbAtendimento_pk PRIMARY KEY (idtbAtendimento),
  CONSTRAINT tbAtendimento_medico FOREIGN KEY (tbMedico_tbPessoa_idtbPessoa) REFERENCES tbMedico(tbPessoa_idtbPessoa),
  CONSTRAINT tbAtendimento_paciente FOREIGN KEY (tbPaciente_tbPessoa_idtbPessoa) REFERENCES tbPaciente(tbPessoa_idtbPessoa)
);








