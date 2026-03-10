--O Filtro de Profissões Populares
--Objetivo: Liste todas as profissões e a quantidade de pessoas em cada uma, mas mostre apenas as profissões que possuem mais de 3 pessoas cadastradas. 
--Ordene o resultado do maior para o menor quantitativo.

SELECT profissao, COUNT(*) FROM dados 
GROUP BY profissao 
HAVING COUNT(*) > 3   --vou agrupar, com a condição das profissões que tem mais de 3 pessoas
ORDER BY COUNT(*) DESC; --ordenar pela contagem das colunas do maior par ao menor

--Selecionar profissao, contar (todas as colunas) de dados
--Agrupar pela profissao
--Tendo contagem (todas as colunas) maior que 3
--Ordenar pela contagem (todas as colunas) descendente;