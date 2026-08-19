Comandos SQL — DDL, DML e DQL
1. Criação de Tabelas — DDL

O comando CREATE TABLE é utilizado para criar as tabelas no banco de dados.

Tabela vendedores
CREATE TABLE vendedores (
    Id_vendedor INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);
Tabela clientes
CREATE TABLE clientes (
    id_cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(100)
);
Tabela veiculos
CREATE TABLE veiculos (
    placa_veiculo VARCHAR(7) PRIMARY KEY,
    marca_do_veiculo VARCHAR(20),
    cor_do_veiculo VARCHAR(20),
    modelo_do_veiculo VARCHAR(20),
    ano_do_veiculo INT
);
2. Alteração da Estrutura — DDL

Foi adicionada uma nova coluna à tabela clientes utilizando o comando ALTER TABLE.

ALTER TABLE clientes 
ADD email VARCHAR(100);
3. Inserção de Dados — DML

O comando INSERT INTO foi utilizado para inserir registros nas tabelas.

Inserindo vendedores
INSERT INTO vendedores 
VALUES (1, 'Joao silva', '99999-9999');


INSERT INTO vendedores 
VALUES (2, 'Lucas Ribeiro', '99999-9999');


INSERT INTO vendedores 
VALUES (3, 'Alice Silva', '99999-9999');
Inserindo clientes
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
Inserindo veículos
INSERT INTO veiculos 
VALUES ('PBK5C23', 'BYD', 'PRETO', 'SEAL', 2025);


INSERT INTO veiculos 
VALUES ('PBK5C24', 'BYD', 'BRANCO', 'SEAL', 2026);


INSERT INTO veiculos 
VALUES ('PBK5C25', 'Honda', 'PRETO', 'Civic', 2026);


INSERT INTO veiculos 
VALUES ('PBK5C26', 'Honda', 'Branco', 'Hrv', 2025);
4. Atualização de Dados — DML

O comando UPDATE foi utilizado para atualizar informações existentes nas tabelas.

Atualização do e-mail de um cliente
UPDATE clientes 
SET email = 'marcos.silva@email.com' 
WHERE id_cpf = '74203107008';
Atualização do telefone de um vendedor
UPDATE vendedores 
SET telefone = '88888-8888' 
WHERE Id_vendedor = 1;
5. Exclusão de Dados — DML

O comando DELETE foi utilizado para excluir um veículo da tabela veiculos.

DELETE FROM veiculos 
WHERE placa_veiculo = 'PBK5C25';
6. Seleção de Dados — DQL

O comando SELECT permite consultar os dados armazenados nas tabelas.

Consultar vendedores
SELECT * FROM vendedores;
Consultar clientes
SELECT * FROM clientes;
Consultar veículos
SELECT * FROM veiculos;
7. Verificação da Estrutura das Tabelas

Para verificar se as tabelas foram criadas corretamente, foram utilizados os comandos SHOW TABLES e DESCRIBE.

Visualizar todas as tabelas
SHOW TABLES;

Esse comando apresenta todas as tabelas existentes no banco de dados.

Verificar a estrutura da tabela vendedores
DESCRIBE vendedores;
Verificar a estrutura da tabela clientes
DESCRIBE clientes;
Verificar a estrutura da tabela veiculos
DESCRIBE veiculos;
Resumo dos Comandos
Categoria	Comando	Utilização
DDL	CREATE TABLE	Criar tabelas
DDL	ALTER TABLE	Alterar a estrutura de uma tabela
DML	INSERT INTO	Inserir registros
DML	UPDATE	Atualizar registros
DML	DELETE	Excluir registros
DQL	SELECT	Consultar registros
Verificação	SHOW TABLES	Visualizar tabelas existentes
Verificação	DESCRIBE	Visualizar a estrutura das tabelas
