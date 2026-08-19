-- criar tabela
CREATE TABLE Pessoa (
  Id_pessoa INT PRIMARY KEY,
  nome VARCHAR(100),
  idade INT,
  data_nascimento DATE
);

CREATE TABLE Compromisso (
  Id INT PRIMARY KEY,
  pessoa_id INT,
  data_compromisso DATE,
  hora_compromisso TIME,
  FOREIGN KEY(pessoa_id) REFERENCES Pessoa(Id_pessoa)

);
SHOW TABLES;
DESCRIBE Pessoa;
DESCRIBE Compromisso;
-- inseir Pessoas
INSERT INTO Pessoa VALUES (1, 'João Silva', 30, '1995-06-15');
INSERT INTO Pessoa VALUES (2, 'Maria Souza', 25, '1999-03-22');
INSERT INTO Pessoa VALUES (3, 'Marina Melo', 33, '1992-12-01');
INSERT INTO Pessoa VALUES (4, 'Andre Costa', 43, '1982-09-10');
INSERT INTO Pessoa VALUES (5, 'Julia Castro', 23, '2003-04-23');

-- Inserir compromissos

INSERT INTO Compromisso VALUES (1, 1, '2026-06-01', '14:00:00');
INSERT INTO Compromisso VALUES (2, 2, '2026-06-02', '09:30:00');
INSERT INTO Compromisso VALUES (3, 3, '2026-08-18', '14:00:00');
INSERT INTO Compromisso VALUES (4, 4, '2026-08-29', '14:00:00');
INSERT INTO Compromisso VALUES (5, 5, '2026-09-01', '13:30:00');

-- Modificações de dados
UPDATE Pessoa SET idade = 26 WHERE Id_pessoa =2;
ALTER TABLE Pessoa ADD Email VARCHAR(100);
UPDATE Pessoa SET email = 'joao.silva@email.com' WHERE Id_pessoa = 1;
UPDATE Pessoa SET email = 'maria.souza@email.com' WHERE Id_pessoa = 2;

-- verificar dados inseridos 
SELECT * FROM Pessoa;
SELECT * FROM Compromisso;


