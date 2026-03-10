--Nacionalidades com Pessoas Altas
--Objetivo: Liste as nacionalidades e a média de altura de seus habitantes, 
--mas mostre apenas os países onde a média de altura do grupo seja maior que 1.75m.

SELECT  nacionalidade, AVG(altura) from dados
GROUP BY nacionalidade
HAVING AVG(altura) > 1.72;

--Selecionar coluna nacionalidade, média(de altura) de dados
--Agrupar pela nacionalidade...
--Onde a média de altura é maior que 1.75