--Soma de Massa: Qual o peso total (soma) de todos os Professores e Professoras juntos?
SELECT SUM(peso) FROM dados
WHERE profissao LIKE 'professor%';

--Selecionar soma (da coluna peso) da tabela dados
--Onde profissao é como 'professor'% (começa com a palavra professor...a)
