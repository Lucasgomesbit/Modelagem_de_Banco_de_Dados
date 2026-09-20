CREATE TABLE Veiculos(
  id_veiculo INT PRIMARY KEY,
  modelo VARCHAR(50) NOT NULL,
  marca VARCHAR(50) NOT NULL,
  ano INT NOT NULL,
  preco DECIMAL(10,2)
);
CREATE TABLE Clientes(
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(20) NOT NULL
);
CREATE TABLE Vendedores(
  id_vendedor INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  comissao DECIMAL(10,2)
);
CREATE TABLE Vendas(
  id_venda INT PRIMARY KEY,
  data_venda DATE,
  valor_final DECIMAL(10,2),
  venda_veiculos INT,
  venda_cliente INT,
  venda_vendedores INT,
  FOREIGN KEY (venda_veiculos) REFERENCES Veiculos(id_veiculo),
  FOREIGN KEY (venda_cliente) REFERENCES Clientes(id_cliente),
  FOREIGN KEY (venda_vendedores) REFERENCES Vendedores(id_vendedor)
);

SHOW TABLES;
DESCRIBE Veiculos;
DESCRIBE Clientes;
DESCRIBE Vendedores;
DESCRIBE Vendas;

INSERT INTO Veiculos (id_veiculo, modelo, marca, ano, preco) VALUES
(1, 'Corolla','Toyota', 2022, 95000),
(2, 'Civic','Honda', 2023, 105000),
(3, 'Onix', 'Chevrolet', 2021, 75000);

INSERT INTO Clientes (id_cliente, nome, telefone) VALUES
(1,'Carlos Silva', '6198887777'),
(2, 'Ana Souza', '61999996666'),
(3, 'João Pereira','61888885555');

INSERT INTO Vendedores (id_vendedor, nome, comissao) VALUES
(1, 'Fernanda Lima', 0.05),
(2, 'Roberto Carlos', 0.04);

INSERT INTO Vendas (id_venda, venda_veiculos, venda_cliente, venda_vendedores, data_venda, valor_final) VALUES
(1,1,1,1, '2025-05-20', 93000),
(2,2,2,2, '2025-05-22', 102000),
(3,3,3,1, '2025-05-23', 74000);


ALTER TABLE Veiculos ADD cor VARCHAR(50);
UPDATE Veiculos SET cor = 'Preto' WHERE id_veiculo =1;
UPDATE Veiculos SET cor = 'Branco' WHERE id_veiculo =2;
UPDATE Veiculos SET cor = 'Prata' WHERE id_veiculo =3;
UPDATE Clientes SET telefone = '61777774444' WHERE id_cliente= 1;
DELETE FROM Vendas WHERE venda_veiculos =3;

SELECT 
    v.data_venda AS data,
    v.valor_final,
    vd.nome AS vendedor,
    c.nome AS cliente,
    ve.modelo,
    ve.marca
FROM Vendas AS v
INNER JOIN Vendedores AS vd
    ON v.venda_vendedores = vd.id_vendedor
INNER JOIN Clientes AS c
    ON v.venda_cliente = c.id_cliente
INNER JOIN Veiculos AS ve
    ON v.venda_veiculos = ve.id_veiculo;

SELECT * FROM Veiculos;
SELECT * FROM Vendedores;
SELECT* FROM Clientes;
SELECT * FROM Vendas;