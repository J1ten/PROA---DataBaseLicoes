# PROA---DataBaseLicoes
Lições pedidas em aula pelo professor Jailson, para treinar o MySQL. 
/////////////////////////////////////////////////////////////////////////
# 📌 Como abrir e usar o MySQL para executar o arquivo SQL do projeto

Este guia explica passo a passo como instalar o MySQL, abrir o MySQL Shell ou MySQL Workbench e rodar o arquivo `.sql` do projeto.

---

## 🚀 1. Instalar o MySQL

Você pode usar **MySQL Server** + **MySQL Workbench** (interface gráfica recomendada).

### 🔹 Download:

* Acesse: [https://dev.mysql.com/downloads/](https://dev.mysql.com/downloads/)

### 🔹 Instale:

* **MySQL Server**
* **MySQL Workbench**
* Defina uma senha para o usuário `root` (guarde ela!)

---

## 🚀 2. Abrindo o MySQL Workbench

Após instalar:

1. Abra **MySQL Workbench**
2. Clique na conexão local:
   **Local Instance MySQL80** (ou similar)
3. Digite a senha configurada no setup.

✔ Agora você já está conectado ao banco.

---

## 🚀 3. Criar um banco de dados para o projeto

No Workbench, crie o banco de dados:

```sql
CREATE DATABASE Funcionario;
```

Selecione o banco:

```sql
USE Funcionario;
```

---

## 🚀 4. Executando o arquivo SQL enviado no projeto

### Caso você tenha um arquivo, por exemplo:

```
Funcionario.sql
```

### Para executar:

1. No MySQL Workbench, vá em:
   **File → Open SQL Script**
2. Selecione o arquivo `.sql`
3. Clique no raio (**Execute**)

Pronto! O MySQL irá:

* criar suas tabelas
* criar colunas
* rodar qualquer outro comando do script

---

## 🚀 5. Conferir as tabelas criadas

```sql
SHOW TABLES;
```

---

## 🚀 6. Exibir as colunas de uma tabela

```sql
DESCRIBE Funcionario;
```

Ou:

```sql
DESC Funcionario;
```

---

## 🚀 7. Inserir dados de exemplo (opcional)

```sql
INSERT INTO Funcionario (
    idFuncionario,
    nomeCompletoFuncionario,
    cargoFuncionario,
    salarioFuncionario,
    cpfFuncionario,
    rgFuncionario,
    fk_enderecoFuncionario_enderecoFuncionario_PK,
    sexoFuncionario,
    generoFuncionario,
    nacionalidadeFuncionario
)
VALUES (
    1, 'José Silva', 'Gerente', 4500.00, '123.456.789-10', '12.345.678-9',
    'END01', 'M', 'Masculino', 'Brasileiro'
);
```

---

## 🚀 8. Selecionar todos os funcionários

```sql
SELECT * FROM Funcionario;
```

---

## 📝 Observações importantes

* Sempre execute primeiro `USE Funcionario;`
* Caso dê erro de permissão, abra o Workbench como administrador
* Se alterar o arquivo `.sql`, você pode reexecutá-lo quando quiser

---

## ✔ Pronto!

Agora você sabe como:

* Instalar MySQL
* Abrir o Workbench
* Criar banco
* Executar o arquivo SQL
* Testar suas tabelas

Se quiser, posso criar também uma versão **passo a passo com prints** para seu repositório.
