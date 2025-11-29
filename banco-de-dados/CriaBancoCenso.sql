CREATE TABLE GeneroBruno (
  idGeneroBruno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(100)  NULL    ,
PRIMARY KEY(idGeneroBruno));



CREATE TABLE UFBruno (
  idUFBruno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(50)  NULL  ,
  Sigla VARCHAR(2)  NULL    ,
PRIMARY KEY(idUFBruno));



CREATE TABLE EscolaridadeBruno (
  idEscolaridade INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(100)  NULL    ,
PRIMARY KEY(idEscolaridade));



CREATE TABLE EtniaBruno (
  idEtniaBruno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(50)  NULL    ,
PRIMARY KEY(idEtniaBruno));



CREATE TABLE LocalidadeBruno (
  idLocalidadeBruno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  UFBruno_idUFBruno INTEGER UNSIGNED  NOT NULL  ,
  Nome VARCHAR(50)  NULL    ,
PRIMARY KEY(idLocalidadeBruno)  ,
INDEX LocalidadeBruno_FKIndex1(UFBruno_idUFBruno),
  FOREIGN KEY(UFBruno_idUFBruno)
    REFERENCES UFBruno(idUFBruno)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE PessoaBruno (
  idPessoaBruno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  GeneroBruno_idGeneroBruno INTEGER UNSIGNED  NOT NULL  ,
  LocalidadeBruno_idLocalidadeBruno INTEGER UNSIGNED  NOT NULL  ,
  EtniaBruno_idEtniaBruno INTEGER UNSIGNED  NOT NULL  ,
  EscolaridadeBruno_idEscolaridade INTEGER UNSIGNED  NOT NULL  ,
  Nome VARCHAR(50)  NULL  ,
  Nascimento DATE  NULL  ,
  Renda REAL  NULL  ,
  Gfamiliar INTEGER UNSIGNED  NULL  ,
  Veiculo INTEGER UNSIGNED  NULL  ,
  Agua BOOL  NULL  ,
  Esgoto BOOL  NULL  ,
  Luz BOOL  NULL    ,
PRIMARY KEY(idPessoaBruno)  ,
INDEX PessoaBruno_FKIndex1(GeneroBruno_idGeneroBruno)  ,
INDEX PessoaBruno_FKIndex2(EscolaridadeBruno_idEscolaridade)  ,
INDEX PessoaBruno_FKIndex3(EtniaBruno_idEtniaBruno)  ,
INDEX PessoaBruno_FKIndex4(LocalidadeBruno_idLocalidadeBruno),
  FOREIGN KEY(GeneroBruno_idGeneroBruno)
    REFERENCES GeneroBruno(idGeneroBruno)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(EscolaridadeBruno_idEscolaridade)
    REFERENCES EscolaridadeBruno(idEscolaridade)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(EtniaBruno_idEtniaBruno)
    REFERENCES EtniaBruno(idEtniaBruno)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(LocalidadeBruno_idLocalidadeBruno)
    REFERENCES LocalidadeBruno(idLocalidadeBruno)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);




