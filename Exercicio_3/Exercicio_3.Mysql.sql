-- criação de tabelas 
CREATE TABLE vendedores (
  Id_vendedor INT PRIMARY KEY,
  nome VARCHAR (100),
  telefone VARCHAR (20)
);
CREATE TABLE clientes(
  id_cpf VARCHAR(11) PRIMARY KEY,
  nome VARCHAR(100),
  telefone VARCHAR(100)
);
CREATE TABLE veiculos(
  placa_veiculo VARCHAR(7) PRIMARY KEY,
  marca_do_veiculo VARCHAR(20),
  cor_do_veiculo VARCHAR (20),
  modelo_do_veiculo VARCHAR(20),
  ano_do_veiculo INT

);
CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    data_venda DATE,
    quantidade INT,
    id_vendedor INT,
    id_cliente VARCHAR(11),
    placa_veiculo VARCHAR(7),

    FOREIGN KEY (id_vendedor) REFERENCES vendedores(Id_vendedor),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cpf),
    FOREIGN KEY (placa_veiculo) REFERENCES veiculos(placa_veiculo)
);

-- VERIFICAÇÃO DE ESTRUTURA DAS TABELAS
SHOW TABLES;
DESCRIBE vendedores;
DESCRIBE clientes;
DESCRIBE veiculos;

-- CAMPO PARA INSERIR DADOS NAS TABELAS

-- vendedores
INSERT INTO vendedores VALUES (1,'Joao silva', '99999-9999');
INSERT INTO vendedores VALUES (2,'Lucas Ribeiro', '99999-9999');
INSERT INTO vendedores VALUES (3,'Alice Silva', '99999-9999');
-- clientes
INSERT INTO clientes VALUES (74203107008,'Marcos Silva', '99999-9999');
INSERT INTO clientes VALUES (84443989005,'Aline Medeiros', '99999-9999');
INSERT INTO clientes VALUES (42050647050,'Paula Maria', '99999-9999');
INSERT INTO clientes VALUES (54282912065,'Fernando Augusto', '99999-9999');
INSERT INTO clientes VALUES (87315039007,'Pepe Oliveira', '99999-9999');
-- veiculos
INSERT INTO veiculos VALUES ('PBK5C23','BYD','PRETO','SEAL',2025);
INSERT INTO veiculos VALUES ('PBK5C24','BYD','BRANCO','SEAL',2026);
INSERT INTO veiculos VALUES ('PBK5C25','Honda','PRETO','Civic',2026);
INSERT INTO veiculos VALUES ('PBK5C26','Honda','Branco','Hrv',2025);
-- vendas

INSERT INTO vendas VALUES (1, '2026-08-10', 1, 1, '74203107008', 'PBK5C23');
INSERT INTO vendas VALUES (2, '2026-08-12', 1, 2, '84443989005', 'PBK5C24');

-- modificações nas tabelas
ALTER TABLE clientes ADD email VARCHAR(100);
UPDATE clientes SET email = 'marcos.silva@email.com' WHERE id_cpf = 74203107008;
UPDATE vendedores SET telefone = '88888-8888' WHERE Id_vendedor = 1;
DELETE FROM veiculos WHERE placa_veiculo = 'PBK5C25';

SELECT * FROM vendedores;
SELECT * FROM clientes;
SELECT * FROM veiculos;

SELECT 
    vendas.data_venda,
    vendas.quantidade,
    vendedores.nome AS vendedor,
    clientes.nome AS cliente,
    veiculos.modelo_do_veiculo AS veiculo
FROM vendas
INNER JOIN vendedores 
    ON vendas.id_vendedor = vendedores.Id_vendedor
INNER JOIN clientes 
    ON vendas.id_cliente = clientes.id_cpf
INNER JOIN veiculos 
    ON vendas.placa_veiculo = veiculos.placa_veiculo;
