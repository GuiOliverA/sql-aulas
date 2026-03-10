--Média de Peso por Gênero (Pós-90)
--Objetivo: Calcule a média de peso agrupada por sexo, mas considere apenas as pessoas que nasceram a partir de 01/01/1990.

SELECT sexo, AVG(peso) FROM dados 
WHERE nascimento >= '1990-01-01' 
GROUP BY sexo;

--Selecionar as colunas sexo, média(de peso) de dados
--Onde nascimento é maios ou igual a '1990-01-01'
--Agrupar tudo isso acima, por sexo