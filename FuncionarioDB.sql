/* FuncionarioLogico: */
create DATABASE Funcionario;
use Funcionario;
CREATE TABLE Funcionario (
    idFuncionario SMALLINT PRIMARY KEY,
    nomeCompletoFuncionario VARCHAR(150),
    cargoFuncionario VARCHAR(80),
    salarioFuncionario FLOAT,
    cpfFuncionario VARCHAR(14),
    rgFuncionario VARCHAR(20),
    fk_enderecoFuncionario_enderecoFuncionario_PK VARCHAR(50),
    sexoFuncionario CHAR(1),
    generoFuncionario VARCHAR(30),
    nacionalidadeFuncionario VARCHAR(50),
    naturalidadeFuncionario VARCHAR(50),
    dependentesFuncionario BOOLEAN,
    estadoCivilFuncionario VARCHAR(30),
    dataDeNascimentoFuncionario DATE,
    formacaoAcademicaFuncionario VARCHAR(150),
    fk_telefoneFuncionario_telefoneFuncionario_PK VARCHAR(50),
    fk_emailFuncionario_emailFuncionario_PK VARCHAR(50),
    dataDaAdmissaoFuncionario DATE,
    cargaHorariaFuncionario VARCHAR(20),
    carteiraDeTrabalhoFuncionario VARCHAR(40),
    contaBancariaFuncionario VARCHAR(50),
    escalaFuncionario VARCHAR(30),
    UNIQUE (cpfFuncionario, idFuncionario)
);

CREATE TABLE enderecoFuncionario (
    enderecoFuncionario_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    ruaEnderecoFuncionario VARCHAR(150),
    bairroEnderecoFuncionario VARCHAR(80),
    numeroEnderecoFuncionario SMALLINT,
    estadoEnderecoFuncionario VARCHAR(50),
    cidadeEnderecoFuncionario VARCHAR(80),
    cepEnderecoFuncionario VARCHAR(15),
    complementoEnderecoFuncionario VARCHAR(100)
);

CREATE TABLE telefoneFuncionario (
    telefoneFuncionario_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    numeroTelefoneFuncionario VARCHAR(20)
);

CREATE TABLE emailFuncionario (
    emailFuncionario_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    emailFuncionario VARCHAR(120)
);

ALTER TABLE Funcionario 
    ADD CONSTRAINT FK_Funcionario_2
    FOREIGN KEY (fk_enderecoFuncionario_enderecoFuncionario_PK)
    REFERENCES enderecoFuncionario (enderecoFuncionario_PK)
    ON DELETE SET NULL;

ALTER TABLE Funcionario 
    ADD CONSTRAINT FK_Funcionario_3
    FOREIGN KEY (fk_telefoneFuncionario_telefoneFuncionario_PK)
    REFERENCES telefoneFuncionario (telefoneFuncionario_PK)
    ON DELETE NO ACTION;

ALTER TABLE Funcionario 
    ADD CONSTRAINT FK_Funcionario_4
    FOREIGN KEY (fk_emailFuncionario_emailFuncionario_PK)
    REFERENCES emailFuncionario (emailFuncionario_PK)
    ON DELETE NO ACTION;
