/* LivroLogico: */

CREATE DATABASE Livraria;

USE Livraria;

CREATE TABLE Livro (
    idLivro SMALLINT PRIMARY KEY UNIQUE,
    tituloLivro VARCHAR(50),
    dataPublicacaoLivro DATE,
    fk_autorLivro_autorLivro_PK VARCHAR(50),
    tipoCapaLivro BOOLEAN,
    valorLivro FLOAT,
    publicoAlvoLivro VARCHAR(50),
    fk_generoLivro_generoLivro_PK VARCHAR(50),
    copiasDisponiveisLivro SMALLINT,
    fk_idiomaLivro_idiomaLivro_PK VARCHAR(50),
    isbnLivro VARCHAR(50),
    sinopseLivro VARCHAR(50),
    fk_editoraLivro_editoraLivro_PK VARCHAR(50),
    fk_dimensoesLivro_dimensoesLivro_PK FLOAT,
    quantidadePaginasLivro SMALLINT,
    colecaoLivro BOOLEAN
);

CREATE TABLE autorLivro (
    autorLivro_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    nomeAutorLivro VARCHAR(50)
);

CREATE TABLE generoLivro (
    generoLivro_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    nomeGeneroLivro VARCHAR(50)
);

CREATE TABLE idiomaLivro (
    idiomaLivro_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    idiomaLivro VARCHAR(50)
);

CREATE TABLE editoraLivro (
    editoraLivro_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    nomeEditoraLivro VARCHAR(50),
    cidadeEditoraLivro VARCHAR(50),
    paisEditoraLivro VARCHAR(50)
);

CREATE TABLE dimensoesLivro (
    dimensoesLivro_PK FLOAT NOT NULL PRIMARY KEY,
    pesoLivro FLOAT,
    alturaLivro FLOAT,
    larguraLivro FLOAT
);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_2
    FOREIGN KEY (fk_autorLivro_autorLivro_PK)
    REFERENCES autorLivro (autorLivro_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_3
    FOREIGN KEY (fk_generoLivro_generoLivro_PK)
    REFERENCES generoLivro (generoLivro_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_4
    FOREIGN KEY (fk_idiomaLivro_idiomaLivro_PK)
    REFERENCES idiomaLivro (idiomaLivro_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_5
    FOREIGN KEY (fk_editoraLivro_editoraLivro_PK)
    REFERENCES editoraLivro (editoraLivro_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_6
    FOREIGN KEY (fk_dimensoesLivro_dimensoesLivro_PK)
    REFERENCES dimensoesLivro (dimensoesLivro_PK)
    ON DELETE SET NULL;