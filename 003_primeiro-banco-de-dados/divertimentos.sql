CREATE DATABASE cadastro; --cria um banco de dados cadastro, na aula 04 é apagado--
USE cadastro;
CREATE TABLE pessoas(
nome VARCHAR(30),
idade TINYINT,
sexo CHAR(1),
peso FLOAT, 
altura FLOAT,
nacionalidade VARCHAR(20)
);  --Um ";" indica o fim de um comando, ou seja, até aqui temos apenas 3 comandos;

DESCRIBE pessoas;                     --Vai descrever a tabela "pessoas"--

