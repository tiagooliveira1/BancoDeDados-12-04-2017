INSERT INTO tbPessoa (
  idtbPessoa,
  nome,
  endereco,
  cidade,
  estado,
  sexo) 
  values (
  1,
  'PACIENTE BACANA',
  'RUA DAS CARMELITAS, 222',
  'CURITIBA',
  'PR',
  'M'
  );
  
  INSERT INTO tbPessoa (
  idtbPessoa,
  nome,
  endereco,
  cidade,
  estado,
  sexo) 
  values (
  2,
  'MÉDICO LEGAL',
  'RUA ABC, 2',
  'CURITIBA',
  'PR',
  'M'
  );
  
  INSERT INTO tbPessoa (
  idtbPessoa,
  nome,
  endereco,
  cidade,
  estado,
  sexo) 
  values (
  3,
  'MÉDICA E PACIENTE BACANA',
  'AV. RUI BARBOSA, 32122',
  'SÃO JOSE DOS PINHAIS',
  'PR',
  'F'
  );
/* insere na tabela paciente, marcando as pessoas 1 e 2 como pacientes */
INSERT INTO  tbPaciente (tbPessoa_idtbPessoa, nrSUS, convenio) VALUES (1, 1233222, 'GEAP SAÚDE');
INSERT INTO  tbPaciente (tbPessoa_idtbPessoa,nrSUS,convenio) VALUES (3,321654,'UNIMED CURITIBA');
  
/* insere na tabela médico, marcando as pessoas 2 e 3 como médicos */
INSERT INTO tbMedico (tbPessoa_idtbPessoa,crm) values (2, '25895');
INSERT INTO tbMedico (tbPessoa_idtbPessoa,crm) values (3, '212325');

INSERT INTO tbAtendimento (idtbAtendimento, tbMedico_tbPessoa_idtbPessoa, tbPaciente_tbPessoa_idtbPessoa, data_atendimento, 
finalizado) values (1,3,1, to_date('2017-04-12','YYYY-MM-DD'), 0);
INSERT INTO tbAtendimento (idtbAtendimento, tbMedico_tbPessoa_idtbPessoa, tbPaciente_tbPessoa_idtbPessoa, data_atendimento, 
finalizado) values (1,2,3, to_date('2017-04-12','YYYY-MM-DD'), 0);