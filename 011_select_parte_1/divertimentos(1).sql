SELECT * FROM dados; --Sempre em ordem de acordo com a chave primária (primary key), ou seja, id
SELECT * FROM cursos; --Sempre em ordem de acordo com a chave primária, ou seja, id_curso


--Ordernar de forma ASCendente (a,b,c,d..) a partir do nome, e não a primary key (idcurso)
--Selecionar tudo da tabela cursos, ordenar pelo nome (ASC);
SELECT * FROM cursos
ORDER BY nome;


--Ordernar de forma DESCendente (z,y,x,w..) a partir do nome, e não a primary key (idcurso)
--Selecionar tudo da tabela cursos, ordendar pelo nome descendente
SELECT * FROM cursos
ORDER BY nome DESC;


--'*'= Selecionar todas as colunas. Mas podemos especificar:
--Selecionar (as colunas) nome, carga e ano da tabela cursos, ordenar pelo nome (ASCendente)
SELECT nome, carga, ano FROM cursos
ORDER BY nome;


--Outra forma, ordenar na ordem que quiser e mais de uma ordem (aqui, todos em ASC):
SELECT ano, carga, nome FROM cursos
ORDER BY ano, nome; 


--Condicional WHERE
--Selecionar colunas X,Y e Z da tabela X. ONDE (condição), ordenar por X,Y,Z;
SELECT nome, carga, ano FROM cursos
WHERE ano <> '2016'
ORDER BY nome;

--Aqui vai uma sequência enorme de exemplos com comandos relacionais:
-- >, <, >=, <=, = (igual a), != (ou <>) dentro do WHERE, além dos Bools: AND, OR


--Condicional BETWEEN: (especificar faixas de valores)
--Selecionar colunas nome, ano da tabela cursos, onde ano ESTÁ ENTRE 2014 e 2026;
SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 and 2016
ORDER BY ano DESC, nome;
--Ordenar por ano DESCendente e nome ASCendente


--Condicional IN(): (especificar valores específicos) ou  NOT IN ()
--Selecionar nome, descrição, ano da tabela cursos. Onde ano EM (2014, 2016);
SELECT nome, descricao, ano FROM cursos
WHERE ano IN (2014, 2016)
ORDER BY ano;
--Ordenar pelo ano ASC


--AND e OR 
--AND: Mostra os que atendem TODAS as condições  (X e Y e Z)
--OR: Mostra as condições atendidas, podendo ser "ALGUMAS" (X ou Y ou Z)
