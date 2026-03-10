--Só vai criar a tabela cursos se ela não existir
CREATE TABLE IF NOT EXISTS cursos (
nome VARCHAR(30) NOT NULL UNIQUE,   --Não pode ser nulo e é Única
descrição TEXT,    --Regra (constraint) texto
carga INT,
aulas INT UNSIGNED, 
ano YEAR DEFAULT '2026'
) DEFAULT CHARSET=utf8;

DESCRIBE cursos;

--Adicionar chave primária (primary key) em dois comandos:
--1- Altera tabela cursos, adicionar coluna id_curso tipo int como primeiro
ALTER TABLE cursos
ADD COLUMN id_curso INT FIRST;

--3- Auto descritivo...
ALTER TABLE cursos
ADD PRIMARY KEY (id_curso);

CREATE TABLE IF NOT EXISTS teste(
id INT,
nome VARCHAR(10),
idade INT    
);

DROP TABLE teste;