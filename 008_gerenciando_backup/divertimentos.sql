--O arquivo cadastro_2026-03-05 é um backup
--Inserimos os dados novamente
SELECT * FROM cursos;
DESC cursos;
DESCRIBE dados;
SELECT * FROM dados;

--Em poucas palavras: Exportar (ou fazer um backup) significa
--Registrar em outro local um passo a passo de como recriar o banco de dados novamente...

--Dump > Passo a passo
--Exportar em xlsx e afins (excel, sheets) é exportar, não backup ou dump




--Apagamos o banco de dados cadastro, porém exportamos no arquivo da aula 008
DROP DATABASE cadastro;
--Criamos o DATABASE (Banco de dados) novamente, usamos ele
CREATE DATABASE cadastro;
Use cadastro;
--Verificar se deu certo, e deu :)
SELECT * FROM cursos;
SELECT * FROM dados;
DESC cursos;
DESCRIBE dados;
SHOW TABLES;