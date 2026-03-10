--Criação das tabelas da aula 11 para prosseguirmos com a aula (prossiga no divertimentos(1))


-- 1. Garante que estamos no banco correto
USE cadastro;

-- 2. Apaga a tabela se ela já existir para evitar erros
DROP TABLE IF EXISTS dados;

-- 3. Cria a estrutura idêntica à do curso
CREATE TABLE dados (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(30) NOT NULL,
  profissao varchar(20) DEFAULT NULL,
  nascimento date DEFAULT NULL,
  sexo enum('M','F') DEFAULT NULL,
  peso decimal(5,2) DEFAULT NULL,
  altura decimal(3,2) DEFAULT NULL,
  nacionalidade varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 4. Insere os dados para teste (Exemplos baseados na aula)
USE cadastro;

INSERT INTO dados (nome, profissao, nascimento, sexo, peso, altura, nacionalidade) VALUES 
('Adriel', 'Auxiliar', '1990-10-25', 'M', '78.5', '1.60', 'Brasil'),
('Agatha', 'Estudante', '2000-01-15', 'F', '55.0', '1.65', 'Portugal'),
('Alan', 'Programador', '1985-12-30', 'M', '82.0', '1.80', 'Brasil'),
('Alice', 'Dentista', '1992-05-12', 'F', '60.0', '1.70', 'Brasil'),
('Alisson', 'Auxiliar', '1995-07-20', 'M', '75.0', '1.75', 'Brasil'),
('Amanda', 'Estudante', '2001-03-10', 'F', '58.0', '1.62', 'Brasil'),
('André', 'Programador', '1988-11-05', 'M', '90.0', '1.85', 'Brasil'),
('Andressa', 'Médica', '1990-08-22', 'F', '65.0', '1.68', 'Brasil'),
('Antônio', 'Professor', '1975-04-18', 'M', '80.0', '1.78', 'Brasil'),
('Beatriz', 'Estudante', '2002-12-12', 'F', '54.0', '1.60', 'Brasil'),
('Caio', 'Programador', '1993-02-28', 'M', '70.0', '1.75', 'Brasil'),
('Camila', 'Dentista', '1991-09-15', 'F', '62.0', '1.72', 'Brasil'),
('Carlos', 'Professor', '1980-06-10', 'M', '85.0', '1.80', 'Brasil'),
('Daniela', 'Estudante', '1999-10-05', 'F', '56.0', '1.65', 'Brasil'),
('Diego', 'Programador', '1987-01-20', 'M', '78.0', '1.77', 'Brasil'),
('Eduardo', 'Auxiliar', '1994-04-12', 'M', '72.0', '1.73', 'Brasil'),
('Eliana', 'Professora', '1982-08-30', 'F', '68.0', '1.68', 'Brasil'),
('Fábio', 'Programador', '1989-11-15', 'M', '83.0', '1.82', 'Brasil'),
('Fernanda', 'Médica', '1991-03-25', 'F', '61.0', '1.70', 'Brasil'),
('Gabriel', 'Estudante', '2003-07-10', 'M', '65.0', '1.75', 'Brasil'),
('Heloísa', 'Dentista', '1992-12-05', 'F', '59.0', '1.64', 'Brasil'),
('Igor', 'Programador', '1986-05-20', 'M', '76.0', '1.78', 'Brasil'),
('Isabela', 'Estudante', '2000-09-15', 'F', '57.0', '1.66', 'Brasil'),
('Janaína', 'Professora', '1981-02-10', 'F', '64.0', '1.65', 'Brasil'),
('Leonardo', 'Auxiliar', '1995-11-30', 'M', '74.0', '1.76', 'Brasil'),
('Letícia', 'Médica', '1990-06-20', 'F', '63.0', '1.71', 'Brasil'),
('Marcelo', 'Programador', '1988-04-15', 'M', '81.0', '1.79', 'Brasil'),
('Mariana', 'Estudante', '2002-01-25', 'F', '55.0', '1.63', 'Brasil'),
('Natália', 'Dentista', '1993-08-10', 'F', '60.0', '1.67', 'Brasil'),
('Otávio', 'Professor', '1978-10-05', 'M', '82.0', '1.81', 'Brasil'),
('Paula', 'Estudante', '2001-05-15', 'F', '56.0', '1.64', 'Brasil'),
('Ricardo', 'Programador', '1985-07-20', 'M', '79.0', '1.76', 'Brasil'),
('Sabrina', 'Médica', '1992-02-10', 'F', '62.0', '1.69', 'Brasil'),
('Thiago', 'Auxiliar', '1994-09-30', 'M', '73.0', '1.74', 'Brasil'),
('Vanessa', 'Professora', '1983-12-15', 'F', '66.0', '1.67', 'Brasil'),
('Yago', 'Estudante', '2004-04-10', 'M', '60.0', '1.72', 'Brasil');

USE cadastro;

-- 1. Limpeza para evitar conflitos
DROP TABLE IF EXISTS cursos;

-- 2. Criação da estrutura técnica
CREATE TABLE IF NOT EXISTS cursos (
  idcurso int NOT NULL,
  nome varchar(30) NOT NULL,
  descricao text,
  carga int unsigned DEFAULT NULL,
  totaulas int unsigned DEFAULT NULL,
  ano year DEFAULT '2016',
  PRIMARY KEY (idcurso),
  UNIQUE KEY nome (nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 3. Inserção dos 30 cursos do catálogo do curso
INSERT INTO cursos VALUES 
(1,'HTML5','Curso de HTML5',40,37,2014),
(2,'Algoritmos','Lógica de Programação',20,15,2014),
(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),
(4,'PHP','Curso de PHP para iniciantes',40,20,2015),
(5,'Java','Introdução à Linguagem Java',40,29,2015),
(6,'MySQL','Banco de Dados MySQL',30,15,2016),
(7,'Word','Curso completo de Word',40,30,2016),
(8,'Sapateado','Danças Rítmicas',40,30,2018),
(9,'Cozinha Árabe','Aprenda a fazer Kibe',40,30,2018),
(10,'YouTuber','Gerar polêmica e ganhar inscritos',5,2,2018),
(11,'Flask','Microframework Python',20,13,2017),
(12,'Django','Framework Web Python',60,35,2017),
(13,'Android','Desenvolvimento de Apps',60,45,2016),
(14,'JavaScript','Linguagem para Web',35,22,2017),
(15,'PowerPoint','Apresentações profissionais',20,12,2015),
(16,'Excel','Planilhas inteligentes',40,25,2015),
(17,'Hardware','Montagem e Manutenção',30,18,2016),
(18,'Redes','Configuração de redes',20,15,2016),
(19,'Segurança','Segurança da Informação',15,10,2017),
(20,'SEO','Otimização de sites',20,12,2017),
(21,'Premiere','Edição de vídeo',20,15,2014),
(22,'After Effects','Efeitos especiais',40,25,2014),
(23,'WordPress','Criação de sites rápidos',30,20,2016),
(24,'Joomla','CMS de código aberto',30,20,2015),
(25,'Magento','E-commerce profissional',50,30,2016),
(26,'Modelagem de Dados','Design de banco de dados',30,15,2014),
(27,'HTML4','Versão antiga do HTML',20,10,2010),
(28,'PHP7','Avançado em PHP',40,20,2018),
(29,'Python','Introdução ao Python',40,18,2017),
(30,'Tratamento de Dados','Big Data e Pandas',40,20,2018);


-- 1. Garante que estamos no banco correto
USE cadastro;

-- 2. Apaga a tabela se ela já existir para evitar erros
DROP TABLE IF EXISTS gafanhotos;

-- 3. Cria a estrutura idêntica à do curso
CREATE TABLE `gafanhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 4. Insere os dados para teste (Exemplos baseados na aula)
INSERT INTO dados VALUES 
(DEFAULT,'Daniel Morais','Programador','1984-01-02','M',78.50,1.83,'Brasil'),
(DEFAULT,'Talita Nascimento','Farmacêutica','1999-12-30','F',55.20,1.65,'Portugal'),
(DEFAULT,'Emmanuelle de Souza','Estudante','2003-07-04','F',58.20,1.65,'Brasil'),
(DEFAULT,'Adriel Cavalcante','Auxiliar','1975-03-21','M',105.70,1.87,'Brasil'),
(DEFAULT,'João Paulo','Professor','1995-10-21','M',72.80,1.72,'Brasil'),
(DEFAULT,'Isabella Oliveira','Médica','1987-12-11','F',62.20,1.70,'Brasil'),
(DEFAULT,'Pedro Henrique','Dentista','1990-03-17','M',92.60,1.84,'Angola'),
(DEFAULT,'Maria Clara','Estudante','2010-09-10','F',35.80,1.40,'Brasil'),
(DEFAULT,'Arthur Silva','Programador','2012-08-12','M',45.90,1.59,'Brasil'),
(DEFAULT,'Tais Araújo','Atriz','1983-12-31','F',53.00,1.64,'Brasil'),
(DEFAULT,'Claudio Caetano','Policial','1970-05-15','M',85.20,1.75,'EUA'),
(DEFAULT,'Silvia Maria','Cozinheira','1982-11-20','F',70.00,1.60,'Brasil');