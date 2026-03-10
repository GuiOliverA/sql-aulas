--RELACIONAMENTO "N para 1" >> Uma linha se relaciona com várias outras


SELECT nome, cursopreferido FROM dados;

--nome da tabela.nome da coluna.  >> INNER JOIN << (Junção interna)
SELECT dados.nome, cursos.nome, cursos.ano 
FROM dados INNER JOIN cursos
ON cursos.idcurso = dados.cursopreferido; --O "ON" da sentido, no contrário todos
--Selecionar dados.nome, cursos.nome, cursos.ano
--De dados JUNTAR cursos
--Sobre cursos.idcurso (primary key) igual a dados.cursopreferido (foreign key)


-->> Apelidos de coluna: AS << (mesmo código acima, mas com apelidos)
SELECT d.nome, c.nome, c.ano 
FROM dados AS d INNER JOIN cursos AS c
ON c.idcurso = d.cursopreferido
ORDER BY c.nome;
--De dados como "d" JUNÇÃO INTERNA com cursos como "c"




--RIGHT/LEFT OUTER JOIN >>  Junção Externa Direita/Esquerda:


SELECT d.nome, c.nome, c.ano 
FROM dados AS d RIGHT OUTER JOIN cursos AS c
ON c.idcurso = d.cursopreferido
ORDER BY c.nome;
--De dados como "d" Junção externa pela direita cursos como "c"


SELECT d.nome, c.nome, c.ano 
FROM dados AS d LEFT OUTER JOIN cursos AS c
ON c.idcurso = d.cursopreferido
ORDER BY c.nome;
---De dados como "d" Junção externa pela esquerda cursos como "c"
