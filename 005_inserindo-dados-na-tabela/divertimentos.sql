--inserir em 'pessoas'
INSERT INTO pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT,'João', '2005-10-21', 'M', '72.8', '1.72', DEFAULT);  --O que está entre aspas '' é um dado para o SQL
--O ID (id) não é necessário pois está sequencial (int NOT NULL AUTO_INCREMENT)

--selecionar todos da tabela pessoas
SELECT * FROM pessoas




--Se a ordem que eu quero inserir é exatamente a mesma:
INSERT INTO pessoas VALUES
(DEFAULT,'Tais', '1983-12-31', 'F', '90', '1.54', DEFAULT);  

--Se eu quiser muitas pessoas de uma só vez:
INSERT INTO pessoas VALUES
(DEFAULT,'Guanabara', '1978-03-17', 'M', '92.6', '1.84', DEFAULT),
(DEFAULT, 'Maria Clara', '2020-09-10', 'F', '25.8', '0.90', DEFAULT),
(DEFAULT, 'Arthur', '2012-08-12', 'M', '45.9', '1.59', DEFAULT);


