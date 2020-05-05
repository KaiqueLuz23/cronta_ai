
 CREATE SEQUENCE candidato_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;


 CREATE SEQUENCE curriculo_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;


 CREATE SEQUENCE empresa_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;
 
 CREATE SEQUENCE endereco_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;

  
 CREATE SEQUENCE cod_ex_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;

 
 CREATE SEQUENCE ex_pro_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;

 
 CREATE SEQUENCE formacao_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;

 
 CREATE SEQUENCE idioma_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;


 
 CREATE SEQUENCE inscricao_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;


 
 CREATE SEQUENCE pessoa_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;


 
 CREATE SEQUENCE plano_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;


 
 CREATE SEQUENCE telefone_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;
 
 CREATE SEQUENCE documento_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;
 
 CREATE SEQUENCE tipo_documento_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;
 
 CREATE SEQUENCE vaga_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;

 CREATE SEQUENCE login_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;
  
 CREATE SEQUENCE  tipo_formacao_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;

 CREATE SEQUENCE  curriculo_seq
 START WITH     1
 INCREMENT BY   1
 NOMAXVALUE;

 --Endereco
INSERT INTO Endereco 
 VALUES(endereco_seq.nextval,'Rua Buduviezer','24','Bairro Vale da Nogueira','São Paulo','Brasil','05870010');

--Telefone
INSERT INTO Telefone
VALUES(telefone_seq.nextval,'CEL','55','11','970707070');

--Plano
INSERT INTO Plano
VALUES(plano_seq.nextval,'Free');

INSERT INTO Plano
VALUES(plano_seq.nextval,'Enterprise');

INSERT INTO Plano
VALUES(plano_seq.nextval,'Plus');

--Idioma
INSERT INTO idioma
VALUES(idioma_seq.nextval,'Inglês','Avançado');

--Pessoa
INSERT INTO pessoa
VALUES(pessoa_seq.nextval,'Rafael Santana de Gois','29052000','M',1,1,1);

--Login
INSERT INTO login
VALUES(login_seq.nextval,'rafagois2000@gmail.com','12131',2);

--Empresa
INSERT INTO empresa
VALUES(empresa_seq.nextval,'Google','11111111111111','Google S.A',2)

--Vaga
INSERT INTO VAGA 
VAlUES(vaga_seq.NEXTVAL,'Tecnologia','Integral',1200.00,'Analista de B.I','Análise','09:00','19:00',2);

--Tipo_Formação
INSERT INTO TIPO_formacao
VALUES(tipo_formacao_seq.nextval,'Teste');

--Formação
INSERT INTO FORMACAO
VALUES(formacao_seq.nextval,'Uninove','Tecnologia em Banco de Dados','Aprovado',29052020,29052021,1);

--Ex_Pro
INSERT INTO EX_PRO
VALUES(ex_pro_seq.nextval,'Google','Analista de B.I','Permanente','Rua das Acácias,2000',21122020,21122030,'Análise');

--Currículo
INSERT INTO CURRICULO
VALUES(curriculo_seq.nextval,'Tecnologia',2000.00,1,1,1);

--Tipo_Documento
INSERT INTO TIPO_DOCUMENTO
VALUES(tipo_documento_seq.nextval,'CNPJ',12345678901234);

--Candidato
INSERT INTO candidato
VALUES(candidato_seq.nextval,2,2,2);

--Inscricao
INSERT INTO inscricao
VALUES(inscricao_seq.nextval,4,3);