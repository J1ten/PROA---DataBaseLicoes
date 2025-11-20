/* EventoMusicalEvento: */

CREATE TABLE Evento (
    idEvento SMALLINT PRIMARY KEY UNIQUE,
    nomeEvento VARCHAR(50),
    fk_dataEvento_dataEvento_PK DATE,
    fk_idEnderecoEvento_idEnderecoEvento_PK VARCHAR(150),
    tipoEvento VARCHAR(50),
    quantidadePessoasEvento SMALLINT,
    fk_valorEvento_valorEvento_PK FLOAT,
    descricaoEvento VARCHAR(50),
    capacidadeMaximaEvento SMALLINT,
    fk_cardapioEvento_cardapioEvento_PK VARCHAR(50),
    fk_idadePermitidaEvento_idadePermitidaEvento_PK SMALLINT,
    acessibildadeEvento BOOLEAN,
    fk_artistasEvento_artistasEvento_PK VARCHAR(50),
    fk_atracaoEvento_atracaoEvento_PK VARCHAR(50),
    fk_generoMusicalEvento_generoMusicalEvento_PK VARCHAR(50),
    requerLicencaAlvaraEvento BOOLEAN,
    LicencaAlvaraStatusEvento VARCHAR(50),
    fk_quantidadeIngressosEventos_quantidadeIngressosEventos_PK SMALLINT,
    quantidadeAssentosEvento SMALLINT,
    quantidadeSaidaEmergenciaEvento SMALLINT,
    areaTotalEvento FLOAT,
    quantidadesBanheiroEvento SMALLINT,
    quantidadeCamarimEvento SMALLINT,
    fk_tamanhoPalco_tamanhoPalco_PK FLOAT,
    capacidadeEnergiaTotalEvento SMALLINT,
    possuiGeradorEvento BOOLEAN,
    necessidaEfeitosEspeciais BOOLEAN
);

CREATE TABLE dataEvento (
    idDataEvento_PK DATE NOT NULL PRIMARY KEY,
    DataEvento DATE,
    horarioInicioEvento TIME,
    horarioEncerramentoEvento TIME
);

CREATE TABLE idEnderecoEvento (
    idEnderecoEvento_PK VARCHAR(150) NOT NULL PRIMARY KEY,
    ruaEnderecoEvento VARCHAR(50),
    bairroEnderecoEvento VARCHAR(150),
    numeroEnderecoEvento SMALLINT,
    cepEnderecoEvento VARCHAR(8),
    cidadeEnderecoEvento VARCHAR(35),
    coplementoEnderecoEvento VARCHAR(50)
);

CREATE TABLE valorEvento (
    idValorEvento_PK FLOAT NOT NULL PRIMARY KEY,
    valorEvento FLOAT
);

CREATE TABLE cardapioEvento (
    idCardapioEvento_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    cardapioEvento VARCHAR(250)
);

CREATE TABLE idadePermitidaEvento (
    idIdadePermitidaEvento_PK SMALLINT NOT NULL PRIMARY KEY,
    idadePermitidaEvento SMALLINT
);

CREATE TABLE artistasEvento (
    idArtistasEvento_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    nomeArtistaEvento VARCHAR(50),
    generoMusicalArtistaEvento VARCHAR(50),
    setListArtistaEvento VARCHAR(50)
);

CREATE TABLE atracaoEvento (
    idAtracaoEvento_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    tipoAtracaoEvento VARCHAR(50)
);

CREATE TABLE generoMusicalEvento (
    idGeneroMusicalEvento_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    generoMusicalEvento VARCHAR(50)
);

CREATE TABLE quantidadeIngressosEventos (
    idIuantidadeIngressosEventos_PK SMALLINT NOT NULL PRIMARY KEY,
    totalIngressosEvento SMALLINT,
    ingressosVendidosEvento SMALLINT,
    maximoVendasIngressoEvento SMALLINT,
    minimoVendasIngressoEvento SMALLINT
);

CREATE TABLE tamanhoPalco (
    tamanhoPalco_PK FLOAT NOT NULL PRIMARY KEY,
    alturaPalcoEvento FLOAT,
    comprimentoPalcoEvento FLOAT,
    larguraPalcoEvento FLOAT
);
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_2
    FOREIGN KEY (fk_dataEvento_dataEvento_PK)
    REFERENCES dataEvento (idDataEvento_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_3
    FOREIGN KEY (fk_idEnderecoEvento_idEnderecoEvento_PK)
    REFERENCES idEnderecoEvento (idEnderecoEvento_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_4
    FOREIGN KEY (fk_valorEvento_valorEvento_PK)
    REFERENCES valorEvento (idValorEvento_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_5
    FOREIGN KEY (fk_cardapioEvento_cardapioEvento_PK)
    REFERENCES cardapioEvento (idCardapioEvento_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_6
    FOREIGN KEY (fk_idadePermitidaEvento_idadePermitidaEvento_PK)
    REFERENCES idadePermitidaEvento (idIdadePermitidaEvento_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_7
    FOREIGN KEY (fk_artistasEvento_artistasEvento_PK)
    REFERENCES artistasEvento (idArtistasEvento_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_8
    FOREIGN KEY (fk_atracaoEvento_atracaoEvento_PK)
    REFERENCES atracaoEvento (idAtracaoEvento_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_9
    FOREIGN KEY (fk_generoMusicalEvento_generoMusicalEvento_PK)
    REFERENCES generoMusicalEvento (idGeneroMusicalEvento_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_10
    FOREIGN KEY (fk_quantidadeIngressosEventos_quantidadeIngressosEventos_PK)
    REFERENCES quantidadeIngressosEventos (idIuantidadeIngressosEventos_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_11
    FOREIGN KEY (fk_tamanhoPalco_tamanhoPalco_PK)
    REFERENCES tamanhoPalco (tamanhoPalco_PK)
    ON DELETE NO ACTION;