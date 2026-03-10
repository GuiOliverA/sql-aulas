SELECT * FROM cursos;

--Manipular linhas (erros inclusos de propósito) (erros nos id's 1, 4 e  5)
INSERT INTO cursos VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução á linguagem Jva', '10', '29', '2000'), 
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Dançças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kike', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');


--Atualizar tabelta cursos, definir XXX = 'XXX'
--Onde id_curso é igual a 'X'
UPDATE cursos SET nome = 'HTML5' WHERE id_curso = '1';

--Atualizar cursos, definir .... onde id_curso é igual a 5, Limitado a uma alteração
UPDATE cursos 
SET nome = 'Java', carga = '40' , ano = '2015'
WHERE id_curso = '5'
LIMIT 1;   --Se não limitar podemos alterar mais de um (se WHERE tiver em mais linhas com dados iguais)
--Mais de uma atualização: adicionar ','
UPDATE cursos SET nome = 'PHP', ano = '2015'
WHERE id_curso = '4';


--Removendo linhas
--Deletar da tabela cursos, onde id_curso é igual a X
DELETE FROM cursos WHERE id_curso = '8';
DELETE FROM cursos WHERE ano = '2018'
LIMIT 3;
--'Limitado a 3 deletes -- MUITO MAIS SEGURO


--Remover TODAS as linhas de uma tabela 
--Truncar (apagar tudo) tabela cursos
TRUNCATE TABLE cursos;