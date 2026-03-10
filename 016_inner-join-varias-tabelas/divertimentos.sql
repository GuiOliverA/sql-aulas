--Relacionamento N:N (Muitos para muitos)
--Para criar este tipo de relacionamento é necessário uma outra tabela, de relacionamento entre duas outras

--Nossa tabela: dados_assiste_cursos:
CREATE TABLE dados_assiste_cursos ( 
    id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    iddados INT,
    idcurso INT,
    PRIMARY KEY (id), --Chave primária de dados_assiste_cursos
    FOREIGN KEY (iddados) REFERENCES dados(id), --chave estrangeira para a chave primária de dados
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso) --chave estrangeira para a chave primária de cursos
) DEFAULT CHARSET = utf8;
--Se as referências não existirem, vai dar erro⚠️



--Inserindo registro na tabela dados_assiste_cursos
--Bem simples, utilizando o mesmo INSERT INTO xxx VALUES();

INSERT INTO dados_assiste_cursos VALUES
(DEFAULT, '2014-03-01', '1', '1'),
(DEFAULT, '2017-01-01', '3', '19'),
(DEFAULT, '2019-03-22', '17', '7');
--Preenche o id (defalut), data e os id's (iddados e idcurso) das tabelas dados e cursos
SELECT * FROM dados_assiste_cursos;
--Mas só mostra os números, eu quero os nome... (INNER JOIN ou JOIN) >>>

SELECT d.nome, idcurso FROM dados AS d    
JOIN dados_assiste_cursos AS a 
ON d.id = a.iddados
ORDER BY d.nome;
--Selecionar as colunas XX da tabela dados como "d"
--Juntar dados_assiste_cursos como "a"
--Sobre d.id igual a a.iddados


--Mas e para pegar registros que estão em outra tabela?? >> Outro INNER JOIN (ou JOIN) <<

SELECT d.nome, c.nome FROM dados AS d    
JOIN dados_assiste_cursos AS a 
ON d.id = a.iddados
JOIN cursos AS c
ON c.idcurso = a.idcurso;


--Selecionei registros de três tabelas diferentes
