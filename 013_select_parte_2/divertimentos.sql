--AGRUPAMENTO:

SELECT carga, count(nome) FROM cursos
GROUP BY carga
ORDER BY carga;
--Selecionar carga, contagem(nome) da tabela cursos
--Agrupar por carga, ordenar por carga; 
--Retorna todas as cargas (5,19,30,40..) e quantas tem cada uma

SELECT nome, carga FROM cursos
WHERE carga = '30';
--Note que o total de cursos com 30h é igual ao Agrupamento acima


SELECT carga, totaulas FROM cursos WHERE totaulas = 30
GROUP BY carga;
--Selecionar carga, totaulas da tabela curso, onde totaulas é igual a 30
--Agrupar por carga (selecionar os registros com totaulas = 30)

SELECT carga, count(nome) from cursos WHERE totaulas = 30
GROUP BY carga;
--Selecionar carga, contar(nome) da tabela cursos, onde totaulas = 30
--Agrupar pela coluna carga;


--Having-- Que funciona apenas com agrupamentos (AGROUP BY):
--Ou seja, o HAVING é uma condicional de um agrupamento (AGROUP BY), oque vou mostrar desse agrupamento? (HAVING)
SELECT ano, count(*) FROM cursos
GROUP BY ano
HAVING count(ano) >= 5  --O HAVING deve utilizar o mesmo campo (coluna) do GROUP BY
ORDER BY count(*) DESC;
--Selecionar a coluna ano e contar(todas as colunas) da tabela cursos
--Agrupar por ano
--Tendo contagem(ano) maior ou igual a 5
--Ordenar pela contagem(todas as colunas) DESCendente;


--Da para fazer uma seleção dentro de outro select Subqueries/Subconsultas
SELECT carga, count(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);
--"Mostre-me as cargas horárias e quantos cursos existem em cada uma, 
--mas olhe apenas para os cursos lançados de 2016 em diante. 
--No resultado final, exiba apenas os grupos cuja carga horária seja maior do que a média de carga de todos os cursos que temos cadastrados."