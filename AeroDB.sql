/* VooLógico: */

CREATE DATABASE AeroTransporte;

USE AeroTransporte;

CREATE TABLE Voo (
    idVoo SMALLINT PRIMARY KEY,
    numeroVoo VARCHAR(50),
    origemVoo VARCHAR(50),
    destinoVoo VARCHAR(50),
    dataPartidaVoo TIMESTAMP,
    dataChegadaVoo TIMESTAMP,
    ciaAereaVoo VARCHAR(50),
    capacidadeVoo SMALLINT,
    duracaoPrevistaVoo VARCHAR(50),
    statusVoo VARCHAR(50),
    portaoEmbarqueVoo VARCHAR(50),
    terminalPartidaVoo VARCHAR(50),
    terminalChegadaVoo VARCHAR(50),
    distanciaMilhasVoo SMALLINT,
    assentoVoo SMALLINT,
    tipoClasseVoo VARCHAR(50),
    idPassageiro SMALLINT
);