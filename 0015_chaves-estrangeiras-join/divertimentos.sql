USE cadastro;
DESC dados;
--Usar o bando cadastro e descrever tabela dados

--Adicionando Foreign Key (chave estrangeira)
ALTER TABLE dados ADD COLUMN cursopreferido INT;

ALTER TABLE dados 
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos (idcurso);   --A referencia: vai proibir que eu cadastre um curso que não existe em "idcurso"
--Alterar tabela dados, adicionar chave estrangeira (coluna cursopreferido)
--Referência a cursos (idcurso);


--Cadastrando o cursopreferido (Foreign Key)
UPDATE dados SET cursopreferido = '6' WHERE id = '1';
SELECT * FROM cursos;
SELECT * FROM DADOS;  --Verificando..
--Atualizar tabela dados, definir cursopreferido = '6'(idcurso) onde o id(dados) é iguao a 1

--Qual a utilidade de uma Chave Estrangeira (Foreign Key) ?
-- >> Integridade Referencial: <<
DELETE FROM cursos WHERE idcurso = '6';
--Vai retornar um erro: O idcurso "6"está relacionado a outra tabela, dados.


--Mas cadê o nome do curso??? (divertimentos(1))
--"Não quero ver só o idcurso, quero ver o nome do curso"