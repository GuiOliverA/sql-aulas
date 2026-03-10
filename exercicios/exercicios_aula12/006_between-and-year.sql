--Filtro de Época: Selecione o nome e a profissão de quem nasceu entre 1970 e 1985.
SELECT nome, profissao, nascimento FROM dados
WHERE nascimento BETWEEN '1970-01-01' AND '1985-12-31'
ORDER BY nome;
--Selecionar as colunas nome, profissao, nacimento da tabela dados
--Onde nascimento está entre (condição) e (condição)
--Ordenar pelo nome


--ou... com YEAR():
SELECT nome, profissao, nascimento FROM dados
WHERE YEAR(nascimento) BETWEEN 1970 AND 1985
ORDER BY nome;
--Selecionar as colunas nome, profissao, nascimento da tabela dados
--Onde o ano(da coluna nascimento) está entre 1970 e 1985
--Ordenar pelo nome