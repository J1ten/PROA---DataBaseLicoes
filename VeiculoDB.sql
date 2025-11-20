/* VeiculoLogico: */
CREATE DATABASE AluguelVeiculos;

USE AluguelVeiculos;

CREATE TABLE Veiculos (
    idVeiculo SMALLINT PRIMARY KEY,
    fk_sinistroVeiculo_sinistroVeiculo_PK SMALLINT,
    chassiVeiculo VARCHAR(35),
    semPararVeiculo BOOLEAN,
    marcaVeiculo VARCHAR(15),
    rodizioVeiculo VARCHAR(2),
    modeloVeiculo VARCHAR(45),
    anoVeiculo DATE,
    placaVeiculo VARCHAR(7),
    habilitacaoNecessariaVeiculo VARCHAR(10),
    fk_revisoesRealizadasVeiculo_revisoesRealizadasVeiculo_PK VARCHAR(35),
    tipoVeiculo VARCHAR(25),
    valorVeiculo FLOAT,
    fk_dimensoesVeiculo_dimensoesVeiculo_PK FLOAT,
    corVeiculo VARCHAR(15),
    valorLocacaoVeiculo FLOAT,
    seguroVeiculo BOOLEAN,
    classificacaoVeiculo VARCHAR(10),
    fk_caracteristicaModeloVeiculo_caracteristicaModeloVeiculo_PK VARCHAR(150),
    UNIQUE (idVeiculo, placaVeiculo)
);

CREATE TABLE sinistroVeiculo (
    sinistroVeiculo_PK SMALLINT NOT NULL PRIMARY KEY,
    descricaolSinistroVeiculo VARCHAR(80)
);

CREATE TABLE revisoesRealizadasVeiculo (
    revisoesRealizadasVeiculo_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    dataRevisaoVeiculo DATE,
    descricaoRevisaoVeiculo VARCHAR(50)
);

CREATE TABLE dimensoesVeiculo (
    dimensoesVeiculo_PK FLOAT NOT NULL PRIMARY KEY,
    alturaVeiculo FLOAT,
    pesoVeiculo FLOAT,
    larguraVeiculo FLOAT,
    tamanhoPortaMalaVeiculo FLOAT
);

CREATE TABLE caracteristicaModeloVeiculo (
    caracteristicaModeloVeiculo_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    tipoMotorVeiculo VARCHAR(40),
    tipoFreioVeiculo VARCHAR(30),
    travaEletricaVeiculo BOOLEAN,
    quantidadePortasVeiculo SMALLINT,
    tipoCombustivelVeiculo VARCHAR(25),
    arCondicionadoVeiculo BOOLEAN,
    quilometragemVeiculo FLOAT,
    tipoCambioVeiculo BOOLEAN,
    quantidadeAssentosVeiculo SMALLINT,
    versaoModeloVeiculo VARCHAR(30)
);
 
ALTER TABLE Veiculos ADD CONSTRAINT FK_Veiculos_2
    FOREIGN KEY (fk_sinistroVeiculo_sinistroVeiculo_PK)
    REFERENCES sinistroVeiculo (sinistroVeiculo_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Veiculos ADD CONSTRAINT FK_Veiculos_3
    FOREIGN KEY (fk_revisoesRealizadasVeiculo_revisoesRealizadasVeiculo_PK)
    REFERENCES revisoesRealizadasVeiculo (revisoesRealizadasVeiculo_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Veiculos ADD CONSTRAINT FK_Veiculos_4
    FOREIGN KEY (fk_dimensoesVeiculo_dimensoesVeiculo_PK)
    REFERENCES dimensoesVeiculo (dimensoesVeiculo_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Veiculos ADD CONSTRAINT FK_Veiculos_5
    FOREIGN KEY (fk_caracteristicaModeloVeiculo_caracteristicaModeloVeiculo_PK)
    REFERENCES caracteristicaModeloVeiculo (caracteristicaModeloVeiculo_PK)
    ON DELETE SET NULL;