---Selecione o nome e a nacionalidade de todos os alunos que não nasceram no Brasil nem em Portugal.
SELECT nome, nacionalidade FROM dados 
WHERE nacionalidade NOT IN ('Brasil', 'Portugal') ORDER BY nome;
SELECT nome, nacionalidade FROM dados;


--Selecionar nome, nacionalidade da tabela dados
--Onde nacionalidade não está em (Brasil, Portugal) ordenar pelo nome