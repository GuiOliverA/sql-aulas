DESC dados;    --DESC = DESCRIBE
SELECT * FROM pessoas;

ALTER TABLE pessoas    --Alterar tabela pessoas, adicionar coluna profissao com varchar(10)
ADD COLUMN profissao VARCHAR(10); --Porém fica em último...

ALTER TABLE pessoas --Alterar tabela pessoas, dropar(apagar) coluna profissão
DROP COLUMN profissao;


--Alterar tabela pessoas, adicionar coluna profissao depois do nome
ALTER TABLE pessoas 
ADD COLUMN profissao VARCHAR(10) AFTER nome;  --Não existe Before (antes)


--Alterar tabela pessoas, adicionar coluna codigo tipo INT no primeiro (palavra COLUMN é opcional)
ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;


--Renomear coluna: Alterar tabela pessoas, mudar coluna profissao pela formação regra VARCHAR(20)
--PADRÃO 'N/A'
ALTER TABLE pessoas 
CHANGE COLUMN formação formação VARCHAR(20) DEFAULT 'N/A' ;

--Renomear o nome da tabela
--Alterar tabela pessoas, renomar para dados
ALTER TABLE pessoas
RENAME TO dados



