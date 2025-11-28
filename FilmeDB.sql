/* FilmeLogico: */
CREATE DATABASE Cinemark;
USE Cinemark;
CREATE TABLE Filme (
    idFilme SMALLINT PRIMARY KEY UNIQUE,
    tituloFilme VARCHAR(50),
    dataLancamentoFilme DATE,
    duracaoFilme VARCHAR(50),
    orcamentoFilme FLOAT,
    sinopseFilme VARCHAR(50),
    fk_generoFilme_generoFilme_PK VARCHAR(50),
    fk_classificacaoIndicativaFilme_classificacaoIndicativaFilme_PK VARCHAR(50),
    direcaoFilme VARCHAR(50),
    fk_roteiristaFilme_roteiristaFilme_PK VARCHAR(50),
    fk_atoresFilme_atoresFilme_PK VARCHAR(50),
    valorBilheteriaFilme FLOAT,
    avaliacaoFilme VARCHAR(50),
    paisOrigemFilme VARCHAR(50),
    idiomaOriginalFilme VARCHAR(50),
    produtoraFilme VARCHAR(50),
    dublagemFilme BOOLEAN,
    publicoAlvoFilme VARCHAR(50),
    premiacaoFilme VARCHAR(50)
);

CREATE TABLE generoFilme (
    generoFilme_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    generoDoFilme VARCHAR(50)
);

CREATE TABLE classificacaoIndicativaFilme (
    classificacaoIndicativaFilme_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    classificacaoIndicativaFilme VARCHAR(50)
);

CREATE TABLE roteiristaFilme (
    roteiristaFilme_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    roteiristaFilme VARCHAR(50)
);

CREATE TABLE atoresFilme (
    atoresFilme_PK VARCHAR(300) NOT NULL PRIMARY KEY,
    atoresFilme VARCHAR(350)
);
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_2
    FOREIGN KEY (fk_generoFilme_generoFilme_PK)
    REFERENCES generoFilme (generoFilme_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_3
    FOREIGN KEY (fk_classificacaoIndicativaFilme_classificacaoIndicativaFilme_PK)
    REFERENCES classificacaoIndicativaFilme (classificacaoIndicativaFilme_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_4
    FOREIGN KEY (fk_roteiristaFilme_roteiristaFilme_PK)
    REFERENCES roteiristaFilme (roteiristaFilme_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_5
    FOREIGN KEY (fk_atoresFilme_atoresFilme_PK)
    REFERENCES atoresFilme (atoresFilme_PK)
    ON DELETE NO ACTION;