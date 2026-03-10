SELECT * FROM cursos;
SELECT * FROM dados;


--Operador LIKE (Parecido/Semelhante) e... '%' (Qualquer quantidade de caracteres)
--A% > Começa com A
--%A > Termina com A
--%A% > Contém A em qualquer posição 
SELECT * FROM cursos
WHERE nome LIKE '%a%';


--NOT LIKE (Não é parecido/Não é semelhante)
SELECT * FROM cursos
WHERE nome NOT LIKE '%K%';
--Selecionar todas as colunas da tabela cursos, onde o nome NÃO É PARECIDO com %%%

--"_" > Underline: Exige que tenha algum caractere no final (não pode ser vazio):
SELECT * FROM cursos
WHERE nome LIKE 'p%_';



SELECT * FROM dados
WHERE nome LIKE '%silva%';
--Procurou 'silva' em qualquer lugar (%aa%)


SELECT * FROM dados
WHERE nome LIKE '%_silva%';
--Procurou 'silva' em qualquer lugar, porém no começo tem que estar vazio (evita a Silvania)