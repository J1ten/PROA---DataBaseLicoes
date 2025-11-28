/* ProdutoLogico: */

CREATE DATABASE Produtos;

USE Produtos;

CREATE TABLE Produto (
    idProduto SMALLINT PRIMARY KEY,
    nomeProduto VARCHAR(50),
    descricaoProduto VARCHAR(50),
    precoProduto FLOAT,
    fk_estoqueProduto_estoqueProduto_PK SMALLINT,
    fk_tagsProduto_tagsProduto_PK VARCHAR(50),
    fk_tipoDeProduto_tipoDeProduto_PK VARCHAR(50),
    fk_marcaProduto_marcaProduto_PK VARCHAR(50),
    fk_modeloProduto_modeloProduto_PK VARCHAR(50),
    garantiaProduto VARCHAR(50),
    fk_dimensaoProduto_dimensaoProduto_PK FLOAT,
    disponibilidadeProduto BOOLEAN,
    fk_corProduto_corProduto_PK VARCHAR(50),
    dataAdicionadoProduto DATE,
    notaFiscalProduto VARCHAR(50),
    codigoDeBarraProduto VARCHAR(50),
    precoVendaProduto FLOAT,
    varianteProduto BOOLEAN,
    UNIQUE (idProduto, codigoDeBarraProduto)
);

CREATE TABLE estoqueProduto (
    estoqueProduto_PK SMALLINT NOT NULL PRIMARY KEY,
    quantidadeAtualProduto SMALLINT,
    quantidadeMinimaProduto SMALLINT,
    quantidadeMaximaProduto SMALLINT
);

CREATE TABLE tagsProduto (
    tagsProduto_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    promocaoProduto BOOLEAN,
    lancamentoProduto BOOLEAN,
    destaqueProduto BOOLEAN
);

CREATE TABLE tipoDeProduto (
    tipoDeProduto_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    tipoDeProduto VARCHAR(50)
);

CREATE TABLE marcaProduto (
    marcaProduto_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    marcaProduto VARCHAR(50)
);

CREATE TABLE modeloProduto (
    modeloProduto_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    modeloProduto VARCHAR(50)
);

CREATE TABLE dimensaoProduto (
    dimensaoProduto_PK FLOAT NOT NULL PRIMARY KEY,
    alturaProduto FLOAT,
    comprimentoProduto FLOAT,
    pesoProduto FLOAT,
    larguraProduto FLOAT
);

CREATE TABLE corProduto (
    corProduto_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    corProduto VARCHAR(50)
);
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_2
    FOREIGN KEY (fk_estoqueProduto_estoqueProduto_PK)
    REFERENCES estoqueProduto (estoqueProduto_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_3
    FOREIGN KEY (fk_tagsProduto_tagsProduto_PK)
    REFERENCES tagsProduto (tagsProduto_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_4
    FOREIGN KEY (fk_tipoDeProduto_tipoDeProduto_PK)
    REFERENCES tipoDeProduto (tipoDeProduto_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_5
    FOREIGN KEY (fk_marcaProduto_marcaProduto_PK)
    REFERENCES marcaProduto (marcaProduto_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_6
    FOREIGN KEY (fk_modeloProduto_modeloProduto_PK)
    REFERENCES modeloProduto (modeloProduto_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_7
    FOREIGN KEY (fk_dimensaoProduto_dimensaoProduto_PK)
    REFERENCES dimensaoProduto (dimensaoProduto_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_8
    FOREIGN KEY (fk_corProduto_corProduto_PK)
    REFERENCES corProduto (corProduto_PK)
    ON DELETE NO ACTION;