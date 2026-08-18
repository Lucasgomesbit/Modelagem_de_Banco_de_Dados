-- Criando a tabela Alunos
CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    cidade VARCHAR(100),
    email VARCHAR(100)
);

-- Criando a tabela Cursos
CREATE TABLE Cursos (
    id_curso INT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT,
    modalidade VARCHAR(50),
    valor DECIMAL(10,2)
);
SHOW TABLES;
-- Inserindo registros na tabela Alunos
INSERT INTO Alunos VALUES (1, 'Ana Silva', 20, 'São Paulo', 'ana.silva@email.com'); 
INSERT INTO Alunos VALUES (2, 'Bruno Souza', 22, 'Rio de Janeiro', 'bruno.souza@email.com'); 
INSERT INTO Alunos VALUES (3, 'Carla Mendes', 19, 'Belo Horizonte', 'carla.mendes@email.com'); 
INSERT INTO Alunos VALUES (4, 'Daniel Lima', 23, 'Curitiba', 'daniel.lima@email.com'); 
INSERT INTO Alunos VALUES (5, 'Eduarda Costa', 21, 'Salvador', 'eduarda.costa@email.com'); 
INSERT INTO Alunos VALUES (6, 'Felipe Rocha', 24, 'Fortaleza', 'felipe.rocha@email.com'); 
INSERT INTO Alunos VALUES (7, 'Gabriela Alves', 20, 'Recife', 'gabriela.alves@email.com'); 
INSERT INTO Alunos VALUES (8, 'Henrique Martins', 25, 'Brasília', 'henrique.martins@email.com'); 
INSERT INTO Alunos VALUES (9, 'Isabela Santos', 18, 'Manaus', 'isabela.santos@email.com'); 
INSERT INTO Alunos VALUES (10, 'João Pereira', 22, 'Porto Alegre', 'joao.pereira@email.com');  

-- Inserindo registros na tabela Cursos
INSERT INTO Cursos VALUES (1, 'Banco de Dados', 60, 'Presencial', 800.00);
INSERT INTO Cursos VALUES (2, 'Programação em Java', 80, 'Online', 1200.00);
INSERT INTO Cursos VALUES (3, 'Python para Iniciantes', 40, 'Online', 600.00);
INSERT INTO Cursos VALUES (4, 'Desenvolvimento Web', 100, 'Presencial', 1500.00);
INSERT INTO Cursos VALUES (5, 'Redes de Computadores', 60, 'Híbrido', 900.00);
INSERT INTO Cursos VALUES (6, 'Segurança da Informação', 70, 'Online', 1300.00);
INSERT INTO Cursos VALUES (7, 'Inteligência Artificial', 90, 'Presencial', 1800.00);
INSERT INTO Cursos VALUES (8, 'Análise de Sistemas', 80, 'Híbrido', 1400.00);
INSERT INTO Cursos VALUES (9, 'Cloud Computing', 50, 'Online', 1100.00);
INSERT INTO Cursos VALUES (10, 'Gestão de Projetos', 40, 'Presencial', 700.00);

-- fetch 
SELECT * FROM Alunos WHERE cidade = 'Brasília';
SELECT * FROM Cursos WHERE modalidade = 'Online';
