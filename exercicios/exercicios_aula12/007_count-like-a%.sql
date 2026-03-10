--Contagem por Letra: Quantas pessoas têm o nome começando com a letra 'A'?
SELECT COUNT(nome) FROM dados
WHERE nome LIKE 'a%';
--Selecionar a contagem de (nome) da tabela dados
--Onde a coluna nome é semelhante a% (começa com a letra "a")