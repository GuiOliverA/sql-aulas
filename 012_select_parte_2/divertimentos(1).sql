--DISTINCT (Distinção/Evita duplicatas)
SELECT nome, nacionalidade FROM dados; --Vai mostrar TUDO

--Vai fazer uma DISTINCT (distinção):
SELECT DISTINCT nacionalidade FROM dados
ORDER BY nacionalidade;

SELECT DISTINCT carga FROM cursos
ORDER BY carga;


--FUNÇÕES DE AGREGAÇÃO
--Selecionar a contagem de tudo da tabela cursos;
SELECT count(*) FROM cursos;

--Mostra todos que tem mais de 40 horas de carga
SELECT * FROM cursos WHERE carga >40;

--Mostra quantos tem mais de 40 horas de carga:
SELECT count(*) FROM cursos WHERE carga > 40;



--Outros (max, min retorna o primeiro caso tenha duplicatas):
--MAX (coluna) - retorna o maior valor da coluna 
--MIN (coluna) - retorna o menor valor da coluna
--SUM (coluna) - soma todos os valores da coluna
--AVG (coluna) - calcula a média aritmética dos valores da coluna
---AVeraGe > média