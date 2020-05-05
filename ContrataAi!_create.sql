-- Table: Candidato
CREATE TABLE Candidato (
    cod_candidato number(8)  NOT NULL,
    cod_curriculo number(10)  NOT NULL,
    cod_tipo_doc number(10)  NOT NULL,
    cod_pessoa number(8)  NOT NULL,
    CONSTRAINT Candidato_pk PRIMARY KEY (cod_candidato)
) ;

-- Table: Curriculo
CREATE TABLE Curriculo (
    cod_curriculo number(10)  NOT NULL,
    area_interesse varchar2(60)  NULL,
    pretensao_salario float(12)  NULL,
    Idioma_cod_idioma number(3)  NOT NULL,
    cod_ex_pro number(10)  NOT NULL,
    cod_formacao number(10)  NOT NULL,
    CONSTRAINT Curriculo_pk PRIMARY KEY (cod_curriculo)
) ;

-- Table: Empresa
CREATE TABLE Empresa (
    cod_empresa number(10)  NOT NULL,
    nome varchar2(45)  NULL,
    cnpj number(14)  NULL,
    razao_social varchar2(45)  NULL,
    cod_pessoa number(8)  NOT NULL,
    CONSTRAINT Empresa_pk PRIMARY KEY (cod_empresa)
) ;

-- Table: Endereco
CREATE TABLE Endereco (
    cod_endereco number(8)  NOT NULL,
    logradouro varchar2(60)  NULL,
    numero varchar2(60)  NULL,
    bairro varchar2(60)  NULL,
    cidade varchar2(60)  NULL,
    pais varchar2(60)  NULL,
    cep varchar2(60)  NULL,
    CONSTRAINT Endereco_pk PRIMARY KEY (cod_endereco)
) ;

-- Table: Ex_Pro
CREATE TABLE Ex_Pro (
    cod_ex_pro number(10)  NOT NULL,
    empresa varchar2(60)  NULL,
    cargo varchar2(60)  NULL,
    contrato varchar2(45)  NULL,
    endereco varchar2(60)  NULL,
    data_inicio number(8)  NULL,
    data_fim number(8)  NULL,
    patividades varchar2(500)  NULL,
    CONSTRAINT Ex_Pro_pk PRIMARY KEY (cod_ex_pro)
) ;

-- Table: Formacao
CREATE TABLE Formacao (
    cod_formacao number(10)  NOT NULL,
    nome_instituicao varchar2(100)  NULL,
    nome_curso varchar2(60)  NULL,
    situacao varchar2(60)  NULL,
    data_inicio number(8)  NULL,
    data_fim number(8)  NULL,
    cod_tipo_form number(10)  NOT NULL,
    CONSTRAINT Formacao_pk PRIMARY KEY (cod_formacao)
) ;

-- Table: Idioma
CREATE TABLE Idioma (
    cod_idioma number(3)  NOT NULL,
    idioma varchar2(50)  NULL,
    nivel varchar2(50)  NULL,
    CONSTRAINT Idioma_pk PRIMARY KEY (cod_idioma)
) ;

-- Table: Inscricao
CREATE TABLE Inscricao (
    cod_inscricao number(10)  NOT NULL,
    cod_vaga number(10)  NOT NULL,
    cod_candidato number(8)  NOT NULL,
    CONSTRAINT Inscricao_pk PRIMARY KEY (cod_inscricao)
) ;

-- Table: Login
CREATE TABLE Login (
    cod_login number(8)  NOT NULL,
    email_login varchar2(120)  NULL,
    senha_login varchar2(10)  NULL,
    cod_pessoa number(8)  NOT NULL,
    CONSTRAINT Login_pk PRIMARY KEY (cod_login)
) ;

-- Table: Pessoa
CREATE TABLE Pessoa (
    cod_pessoa number(8)  NOT NULL,
    nome varchar2(120)  NULL,
    datanascimento varchar2(10)  NULL,
    sexo varchar2(1)  NULL,
    cod_plano number(2)  NOT NULL,
    cod_telefone number(8)  NOT NULL,
    cod_endereco number(8)  NOT NULL,
    CONSTRAINT Pessoa_pk PRIMARY KEY (cod_pessoa)
) ;

-- Table: Plano
CREATE TABLE Plano (
    cod_plano number(2)  NOT NULL,
    tipo varchar2(60)  NULL,
    CONSTRAINT Plano_pk PRIMARY KEY (cod_plano)
) ;

-- Table: Telefone
CREATE TABLE Telefone (
    cod_telefone number(8)  NOT NULL,
    tipo_telefone varchar2(3)  NULL,
    ddi varchar2(2)  NULL,
    ddd varchar2(2)  NULL,
    numero varchar2(9)  NULL,
    CONSTRAINT Telefone_pk PRIMARY KEY (cod_telefone)
) ;

-- Table: Tipo_Documento
CREATE TABLE Tipo_Documento (
    cod_tipo_doc number(10)  NOT NULL,
    tipo varchar2(45)  NULL,
    numero_doc number(15)  NULL,
    CONSTRAINT Tipo_Documento_pk PRIMARY KEY (cod_tipo_doc)
) ;

-- Table: Vaga
CREATE TABLE Vaga (
    cod_vaga number(10)  NOT NULL,
    area_vaga varchar2(60)  NULL,
    tipo_contrato varchar2(60)  NULL,
    salario float(14)  NULL,
    cargo varchar2(45)  NULL,
    atividade varchar2(500)  NULL,
    horario_inicio number(4)  NULL,
    horario_fim number(4)  NULL,
    cod_empresa number(10)  NOT NULL,
    CONSTRAINT Vaga_pk PRIMARY KEY (cod_vaga)
) ;

-- Table: tipo_formacao
CREATE TABLE tipo_formacao (
    cod_tipo_form number(10)  NOT NULL,
    nome varchar2(60)  NULL,
    CONSTRAINT tipo_formacao_pk PRIMARY KEY (cod_tipo_form)
) ;

-- foreign keys
-- Reference: Candidato_Curriculo (table: Candidato)
ALTER TABLE Candidato ADD CONSTRAINT Candidato_Curriculo
    FOREIGN KEY (cod_curriculo)
    REFERENCES Curriculo (cod_curriculo);

-- Reference: Candidato_Pessoa (table: Candidato)
ALTER TABLE Candidato ADD CONSTRAINT Candidato_Pessoa
    FOREIGN KEY (cod_pessoa)
    REFERENCES Pessoa (cod_pessoa);

-- Reference: Candidato_Tipo_Documento (table: Candidato)
ALTER TABLE Candidato ADD CONSTRAINT Candidato_Tipo_Documento
    FOREIGN KEY (cod_tipo_doc)
    REFERENCES Tipo_Documento (cod_tipo_doc);

-- Reference: Curriculo_Ex_Pro (table: Curriculo)
ALTER TABLE Curriculo ADD CONSTRAINT Curriculo_Ex_Pro
    FOREIGN KEY (cod_ex_pro)
    REFERENCES Ex_Pro (cod_ex_pro);

-- Reference: Curriculo_Formacao (table: Curriculo)
ALTER TABLE Curriculo ADD CONSTRAINT Curriculo_Formacao
    FOREIGN KEY (cod_formacao)
    REFERENCES Formacao (cod_formacao);

-- Reference: Curriculo_Idioma (table: Curriculo)
ALTER TABLE Curriculo ADD CONSTRAINT Curriculo_Idioma
    FOREIGN KEY (Idioma_cod_idioma)
    REFERENCES Idioma (cod_idioma);

-- Reference: Empresa_Pessoa (table: Empresa)
ALTER TABLE Empresa ADD CONSTRAINT Empresa_Pessoa
    FOREIGN KEY (cod_pessoa)
    REFERENCES Pessoa (cod_pessoa);

-- Reference: Formacao_tipo_formacao (table: Formacao)
ALTER TABLE Formacao ADD CONSTRAINT Formacao_tipo_formacao
    FOREIGN KEY (cod_tipo_form)
    REFERENCES tipo_formacao (cod_tipo_form);

-- Reference: Inscricao_Candidato (table: Inscricao)
ALTER TABLE Inscricao ADD CONSTRAINT Inscricao_Candidato
    FOREIGN KEY (cod_candidato)
    REFERENCES Candidato (cod_candidato);

-- Reference: Inscricao_Vaga (table: Inscricao)
ALTER TABLE Inscricao ADD CONSTRAINT Inscricao_Vaga
    FOREIGN KEY (cod_vaga)
    REFERENCES Vaga (cod_vaga);

-- Reference: Login_Pessoa (table: Login)
ALTER TABLE Login ADD CONSTRAINT Login_Pessoa
    FOREIGN KEY (cod_pessoa)
    REFERENCES Pessoa (cod_pessoa);

-- Reference: Pessoa_Endereco (table: Pessoa)
ALTER TABLE Pessoa ADD CONSTRAINT Pessoa_Endereco
    FOREIGN KEY (cod_endereco)
    REFERENCES Endereco (cod_endereco);

-- Reference: Pessoa_Plano (table: Pessoa)
ALTER TABLE Pessoa ADD CONSTRAINT Pessoa_Plano
    FOREIGN KEY (cod_plano)
    REFERENCES Plano (cod_plano);

-- Reference: Pessoa_Telefone (table: Pessoa)
ALTER TABLE Pessoa ADD CONSTRAINT Pessoa_Telefone
    FOREIGN KEY (cod_telefone)
    REFERENCES Telefone (cod_telefone);

-- Reference: Vaga_Empresa (table: Vaga)
ALTER TABLE Vaga ADD CONSTRAINT Vaga_Empresa
    FOREIGN KEY (cod_empresa)
    REFERENCES Empresa (cod_empresa);

