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
(1, 1, 32.00),
(2, 2, 28.50),
(3, 3, 30.00);

SELECT 
    c.nome AS nome_cliente,
    f.titulo AS titulo_filme,
    f.duracao_minutos AS duracao_filme,
    i.valor_pago
FROM ingressos i
INNER JOIN clientes c ON i.id_cliente = c.id_cliente
INNER JOIN filmes f ON i.id_filme = f.id_filme;