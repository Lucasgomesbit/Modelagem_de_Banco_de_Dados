# 🎬 Banco de Dados — Sistema de Cinema

Modelagem de um banco de dados relacional para gerenciar **filmes**, **clientes** e **ingressos** vendidos.

## 📌 Cenário

A empresa deseja montar um banco de dados que relacione os filmes exibidos, os clientes e os ingressos vendidos. Para isso, foram criadas três tabelas principais:

- **filmes**: armazena os títulos dos filmes e suas durações;
- **clientes**: armazena os dados dos clientes que compraram ingressos;
- **ingressos**: registra a venda de ingressos, associando um cliente a um filme, com o valor pago.

---

## 1️⃣ Criação das tabelas

```sql
CREATE TABLE filmes (
    id_filme INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    duracao_minutos INT NOT NULL
);

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE ingressos (
    id_ingresso INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_filme INT NOT NULL,
    valor_pago DECIMAL(6,2) NOT NULL,
    data_venda DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_filme) REFERENCES filmes(id_filme)
);
```

---

## 2️⃣ Inserção de dados fictícios

```sql
-- Filmes
INSERT INTO filmes (titulo, duracao_minutos) VALUES
('Duna: Parte Dois', 166),
('Divertida Mente 2', 96),
('Coringa: Delírio a Dois', 138);

-- Clientes
INSERT INTO clientes (nome, email) VALUES
('Ana Souza', 'ana.souza@email.com'),
('Bruno Lima', 'bruno.lima@email.com'),
('Carla Mendes', 'carla.mendes@email.com');

-- Ingressos (vendas)
INSERT INTO ingressos (id_cliente, id_filme, valor_pago) VALUES
(1, 1, 32.00),  -- Ana assistiu Duna: Parte Dois
(2, 2, 28.50),  -- Bruno assistiu Divertida Mente 2
(3, 3, 30.00);  -- Carla assistiu Coringa: Delírio a Dois
```

---

## 3️⃣ Consulta com INNER JOIN

```sql
SELECT 
    c.nome AS nome_cliente,
    f.titulo AS titulo_filme,
    f.duracao_minutos AS duracao_filme,
    i.valor_pago
FROM ingressos i
INNER JOIN clientes c ON i.id_cliente = c.id_cliente
INNER JOIN filmes f ON i.id_filme = f.id_filme;
```

### Resultado esperado

| nome_cliente | titulo_filme | duracao_filme | valor_pago |
|---|---|---|---|
| Ana Souza | Duna: Parte Dois | 166 | 32.00 |
| Bruno Lima | Divertida Mente 2 | 96 | 28.50 |
| Carla Mendes | Coringa: Delírio a Dois | 138 | 30.00 |

---

## 🧠 Como funciona a lógica

A tabela `ingressos` funciona como uma tabela "ponte" entre `clientes` e `filmes`, guardando as chaves estrangeiras (`id_cliente` e `id_filme`) de cada venda. O `INNER JOIN` parte dessa tabela central e busca, em cada uma das outras duas, os dados correspondentes através das chaves — por isso o resultado final consegue cruzar nome do cliente, filme, duração e valor pago em uma única linha por venda.
