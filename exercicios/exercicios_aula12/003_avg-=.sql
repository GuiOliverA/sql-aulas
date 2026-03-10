--Média de Peso Feminina: Qual a média de peso de todas as mulheres cadastradas na sua lista?
SELECT AVG(peso) FROM dados
WHERE sexo = 'F';

--Selecionar a média de peso da tabela dados, onde sexo é igual a F