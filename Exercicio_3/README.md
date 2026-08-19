
# 📚 Banco de Dados — DDL, DML e DQL

Projeto desenvolvido para a disciplina de **Modelagem de Banco de Dados**, com o objetivo de praticar comandos SQL utilizando **MySQL**.

Neste projeto foram trabalhados conceitos de:

- DDL — Data Definition Language
- DML — Data Manipulation Language
- DQL — Data Query Language
- Criação e alteração de tabelas
- Inserção, atualização e exclusão de dados
- Consultas de dados
- Verificação da estrutura do banco

---

## 🗂️ Tabelas Criadas

O banco de dados possui três tabelas principais:

- `vendedores`
- `clientes`
- `veiculos`

---

## 🏗️ DDL — Criação das Tabelas

### Tabela `vendedores`

```sql
CREATE TABLE vendedores (
    Id_vendedor INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);
````

### Tabela `clientes`

```sql
CREATE TABLE clientes (
    id_cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(100)
);
```

### Tabela `veiculos`

```sql
CREATE TABLE veiculos (
    placa_veiculo VARCHAR(7) PRIMARY KEY,
    marca_do_veiculo VARCHAR(20),
    cor_do_veiculo VARCHAR(20),
    modelo_do_veiculo VARCHAR(20),
    ano_do_veiculo INT
);
```

---

## ✏️ DDL — Alteração da Estrutura

Foi adicionada uma nova coluna `email` à tabela `clientes` utilizando o comando `ALTER TABLE`.

```sql
ALTER TABLE clientes 
ADD email VARCHAR(100);
```

---

# 📥 DML — Inserção de Dados

O comando `INSERT INTO` foi utilizado para inserir registros nas tabelas.

### Vendedores

```sql
INSERT INTO vendedores 
VALUES (1, 'Joao silva', '99999-9999');

INSERT INTO vendedores 
VALUES (2, 'Lucas Ribeiro', '99999-9999');

INSERT INTO vendedores 
VALUES (3, 'Alice Silva', '99999-9999');
```

### Clientes

```sql
INSERT INTO clientes 
VALUES ('74203107008', 'Marcos Silva', '99999-9999');

INSERT INTO clientes 
VALUES ('84443989005', 'Aline Medeiros', '99999-9999');

INSERT INTO clientes 
VALUES ('42050647050', 'Paula Maria', '99999-9999');

INSERT INTO clientes 
VALUES ('54282912065', 'Fernando Augusto', '99999-9999');

INSERT INTO clientes 
VALUES ('87315039007', 'Pepe Oliveira', '99999-9999');
```

### Veículos

```sql
INSERT INTO veiculos 
VALUES ('PBK5C23', 'BYD', 'PRETO', 'SEAL', 2025);

INSERT INTO veiculos 
VALUES ('PBK5C24', 'BYD', 'BRANCO', 'SEAL', 2026);

INSERT INTO veiculos 
VALUES ('PBK5C25', 'Honda', 'PRETO', 'Civic', 2026);

INSERT INTO veiculos 
VALUES ('PBK5C26', 'Honda', 'Branco', 'Hrv', 2025);
```

---

# 🔄 DML — Atualização de Dados

O comando `UPDATE` foi utilizado para modificar dados existentes nas tabelas.

### Atualização do e-mail do cliente

```sql
UPDATE clientes 
SET email = 'marcos.silva@email.com' 
WHERE id_cpf = '74203107008';
```

### Atualização do telefone do vendedor

```sql
UPDATE vendedores 
SET telefone = '88888-8888' 
WHERE Id_vendedor = 1;
```

---

# 🗑️ DML — Exclusão de Dados

O comando `DELETE` foi utilizado para excluir um veículo da tabela `veiculos`.

```sql
DELETE FROM veiculos 
WHERE placa_veiculo = 'PBK5C25';
```

---

# 🔎 DQL — Consulta de Dados

O comando `SELECT` foi utilizado para consultar os dados armazenados nas tabelas.

### Consultar vendedores

```sql
SELECT * FROM vendedores;
```

### Consultar clientes

```sql
SELECT * FROM clientes;
```

### Consultar veículos

```sql
SELECT * FROM veiculos;
```

---

# ✅ Verificação da Execução dos Comandos

Após executar os comandos, foram utilizados comandos de verificação para confirmar a criação das tabelas, sua estrutura e os dados inseridos.

## Visualizar todas as tabelas

```sql
SHOW TABLES;
```

Esse comando permite visualizar todas as tabelas existentes no banco de dados.

---

## Verificar a estrutura das tabelas

### Vendedores

```sql
DESCRIBE vendedores;
```

### Clientes

```sql
DESCRIBE clientes;
```

### Veículos

```sql
DESCRIBE veiculos;
```

O comando `DESCRIBE` permite verificar as colunas, tipos de dados e chaves de cada tabela.

---

# 📊 Estrutura do Banco

| Tabela       | Chave Primária  | Principais Campos       |
| ------------ | --------------- | ----------------------- |
| `vendedores` | `Id_vendedor`   | nome, telefone          |
| `clientes`   | `id_cpf`        | nome, telefone, email   |
| `veiculos`   | `placa_veiculo` | marca, cor, modelo, ano |

---

# 📌 Resumo dos Comandos

| Categoria       | Comando        | Função                          |
| --------------- | -------------- | ------------------------------- |
| **DDL**         | `CREATE TABLE` | Criar tabelas                   |
| **DDL**         | `ALTER TABLE`  | Alterar estrutura das tabelas   |
| **DML**         | `INSERT INTO`  | Inserir dados                   |
| **DML**         | `UPDATE`       | Atualizar dados                 |
| **DML**         | `DELETE`       | Excluir dados                   |
| **DQL**         | `SELECT`       | Consultar dados                 |
| **Verificação** | `SHOW TABLES`  | Visualizar tabelas              |
| **Verificação** | `DESCRIBE`     | Verificar estrutura das tabelas |

---

## 🛠️ Tecnologias Utilizadas

* **MySQL**
* **SQL**
* **GitHub**

---

## 🎓 Objetivo

Este projeto foi desenvolvido como atividade acadêmica para praticar os principais comandos SQL relacionados à criação, manipulação e consulta de dados em um banco de dados relacional.

```

Esse conteúdo está no formato correto para um **`README.md` do GitHub**, incluindo títulos, tabelas, listas, emojis e blocos de código SQL.
```

