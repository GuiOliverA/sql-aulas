--(Subquery)
--Objetivo: Liste o nome e a altura de todos os alunos que possuem uma altura maior do que a média de altura de todos os alunos cadastrados na tabela.

SELECT nome, altura FROM dados 
WHERE altura > (SELECT AVG(altura) FROM dados);

--Selecionar as colunas nome e altura de dados
--Onde a altura é maior que (a seleção da média (de altura) de dados)