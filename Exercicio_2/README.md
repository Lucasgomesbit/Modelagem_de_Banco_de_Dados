# Exemplos DDL, DML e DQL

Este projeto apresenta exemplos básicos de comandos SQL utilizando **MySQL**, trabalhando com as tabelas `Pessoa` e `Compromisso`.

---

## 📌 DDL — Data Definition Language

Os comandos **DDL** são utilizados para criar e modificar a estrutura do banco de dados.

### Criando a tabela `Pessoa`

```sql
CREATE TABLE Pessoa (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    data_nascimento DATE
);
```

### Criando a tabela `Compromisso`

```sql
CREATE TABLE Compromisso (
    id INT PRIMARY KEY,
    pessoa_id INT,
    data_compromisso DATE,
    hora_compromisso TIME,
    FOREIGN KEY (pessoa_id) REFERENCES Pessoa(id)
);
```

### Verificando as tabelas criadas

```sql
SHOW TABLES;

DESCRIBE Pessoa;

DESCRIBE Compromisso;
```

---

## 📌 DML — Data Manipulation Language

Os comandos **DML** são utilizados para inserir e modificar dados nas tabelas.

### Inserindo dados na tabela `Pessoa`

```sql
INSERT INTO Pessoa 
(id, nome, idade, data_nascimento)
VALUES
(1, 'João Silva', 30, '1995-06-15'),
(2, 'Maria Souza', 25, '1999-03-22');
```

### Inserindo dados na tabela `Compromisso`

```sql
INSERT INTO Compromisso 
(id, pessoa_id, data_compromisso, hora_compromisso)
VALUES
(1, 1, '2025-06-01', '14:00:00'),
(2, 2, '2025-06-02', '09:30:00');
```

---

## 📌 DQL — Data Query Language

O comando `SELECT` é utilizado para consultar os dados armazenados nas tabelas.

### Consultando a tabela `Pessoa`

```sql
SELECT * FROM Pessoa;
```

### Consultando a tabela `Compromisso`

```sql
SELECT * FROM Compromisso;
```

---

## 🔄 UPDATE — Modificando dados

O comando `UPDATE` permite alterar dados existentes na tabela.

No exemplo abaixo, a idade da pessoa com `id = 2` é alterada para `26`:

```sql
UPDATE Pessoa
SET idade = 26
WHERE id = 2;
```

### Verificando a alteração

```sql
SELECT * FROM Pessoa;
```

---

## 🛠️ ALTER TABLE — Modificando a estrutura

O comando `ALTER TABLE` permite modificar a estrutura de uma tabela existente.

### Adicionando o campo `email`

```sql
ALTER TABLE Pessoa
ADD email VARCHAR(100);
```

### Verificando o campo adicionado

```sql
SELECT * FROM Pessoa;
```

---

## 📧 Atualizando o campo `email`

Depois de adicionar o campo `email`, podemos inserir informações utilizando `UPDATE`.

### Email do João

```sql
UPDATE Pessoa
SET email = 'joao.silva@email.com'
WHERE id = 1;
```

### Email da Maria

```sql
UPDATE Pessoa
SET email = 'maria.souza@email.com'
WHERE id = 2;
```

### Verificando os dados

```sql
SELECT * FROM Pessoa;
```

---

## 📚 Comandos utilizados

| Comando        | Função                         |
| -------------- | ------------------------------ |
| `CREATE TABLE` | Cria uma tabela                |
| `SHOW TABLES`  | Mostra as tabelas do banco     |
| `DESCRIBE`     | Mostra a estrutura da tabela   |
| `INSERT INTO`  | Insere dados                   |
| `SELECT`       | Consulta dados                 |
| `UPDATE`       | Altera dados existentes        |
| `ALTER TABLE`  | Modifica a estrutura da tabela |
| `ADD`          | Adiciona uma nova coluna       |
| `PRIMARY KEY`  | Define a chave primária        |
| `FOREIGN KEY`  | Define uma chave estrangeira   |

---

## 🎯 Objetivo

Este exercício tem como objetivo praticar os principais comandos SQL relacionados à **criação de tabelas, inserção de dados, consulta, atualização de registros e alteração da estrutura de tabelas**.
