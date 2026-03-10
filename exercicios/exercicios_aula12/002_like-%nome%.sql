--Busca por Família: O professor usou o exemplo do 'Silva'. No seu banco, encontre todos os alunos que possuem 'Souza' ou 'Jesus' no nome.
SELECT * FROM dados
WHERE nome LIKE '%Souza%' OR nome LIKE '%Jesus%'
ORDER BY nome;
SELECT * FROM dados;

--SELECIONAR todas as colunas da tabela dados, onde nome  não é parecido com SOUZA em qualquer lugar ou nome JESUS em qualquer lugar