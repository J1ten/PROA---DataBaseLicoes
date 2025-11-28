/* AnimalLogico: */
CREATE DATABASE PetShopAnimais;
USE PetShopAnimais; 
CREATE TABLE Animal (
    idAnimal VARCHAR(50) PRIMARY KEY,
    nomeAnimal VARCHAR(50),
    especieAnimal VARCHAR(50),
    racaAnimal VARCHAR(50),
    idadeAnimal SMALLINT,
    fk_vacinasAplicadasAnimal_vacinasAplicadasAnimal_PK VARCHAR(50),
    cpfAnimal VARCHAR(50),
    sexoAnimal VARCHAR(50),
    pelagemAnimal VARCHAR(50),
    castradoAnimal BOOLEAN,
    fk_informacoesTutorAnimal_informacoesTutorAnimal_PK VARCHAR(50),
    pesoAnimal FLOAT,
    alturaAnimal FLOAT,
    microChipAnimal BOOLEAN,
    dataNascimentoAnimal DATE,
    porteAnimal VARCHAR(50),
    statusAnimal BOOLEAN,
    localOrigemAnimal VARCHAR(50),
    restricaoAnimal VARCHAR(50),
    fk_diagnosticosAnimal_diagnosticosAnimal_PK VARCHAR(50),
    adestradoAnimal BOOLEAN,
    curiosidadeSobreAnimal VARCHAR(50),
    dataEntradaAnimal DATE,
    dataSaidaAnimal DATE,
    precoAnimal FLOAT,
    precoCompradoAnimal FLOAT,
    fk_consultaAnimal_consultaAnimal_PK VARCHAR(50),
    UNIQUE (idAnimal, cpfAnimal)
);

CREATE TABLE vacinasAplicadasAnimal (
    idVacinasAplicadasAnimal_PK VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE,
    tipoVacinaAnimal VARCHAR(50),
    dataVacinaAnimal DATE,
    profissionalVacinaAnimal VARCHAR(50)
);

CREATE TABLE informacoesTutorAnimal (
    idInformacoesTutorAnimal_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    nomeTutorAnimal VARCHAR(50),
    dataNascimentoTutorAnimal DATE,
    cpfTutorAnimal VARCHAR(50),
    rgTutorAnimal VARCHAR(50),
    telefoneTutorAnimal VARCHAR(50),
    emailTutorAnimal VARCHAR(50),
    ruaEnderecoTutorAnimal VARCHAR(50),
    bairroTutorAnimal VARCHAR(50),
    numeroTutorAnimal SMALLINT,
    cidadeTutorAnimal VARCHAR(50),
    cepTutorAnimal VARCHAR(50),
    complementoTutorAnimal VARCHAR(50),
    sexoTutorAnimal VARCHAR(50),
    generoTutorAnimal VARCHAR(50),
    nacionalidadeTutorAnimal VARCHAR(50),
    naturalidadeTutorAnimal VARCHAR(50),
    UNIQUE (cpfTutorAnimal, idInformacoesTutorAnimal_PK)
);

CREATE TABLE diagnosticosAnimal (
    idDiagnosticosAnimal_PK VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE,
    diagnosticosAnimal VARCHAR(50)
);

CREATE TABLE consultaAnimal (
    idConsultaAnimal_PK VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE,
    dataConsultaAnimal DATE,
    descricaoConsultaAnimal VARCHAR(50)
);
 
ALTER TABLE Animal ADD CONSTRAINT FK_Animal_2
    FOREIGN KEY (fk_vacinasAplicadasAnimal_vacinasAplicadasAnimal_PK)
    REFERENCES vacinasAplicadasAnimal (idVacinasAplicadasAnimal_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Animal ADD CONSTRAINT FK_Animal_3
    FOREIGN KEY (fk_informacoesTutorAnimal_informacoesTutorAnimal_PK)
    REFERENCES informacoesTutorAnimal (idInformacoesTutorAnimal_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Animal ADD CONSTRAINT FK_Animal_4
    FOREIGN KEY (fk_diagnosticosAnimal_diagnosticosAnimal_PK)
    REFERENCES diagnosticosAnimal (idDiagnosticosAnimal_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Animal ADD CONSTRAINT FK_Animal_5
    FOREIGN KEY (fk_consultaAnimal_consultaAnimal_PK)
    REFERENCES consultaAnimal (idConsultaAnimal_PK)
    ON DELETE SET NULL;