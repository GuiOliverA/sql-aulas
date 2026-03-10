DROP DATABASE cadastro; -- apaga o banco de dados cadastro da aula 03

CREATE DATABASE cadastro    --cria o banco (contêiner) cadastro
DEFAULT CHARACTER SET utf8 --define o "mapa de caracteres" utf8 (mundialmente usado)
DEFAULT COLLATE utf8_general_ci; --define que é insensível a maiúsculas, ou seja, um SQL é lido como sql


--CREATE DATABASE meubanco; -- criamos um contêiner sem especificação nenhuma
--drop DATABASE meubanco; --apagamos novamente

CREATE TABLE pessoas (       
ID INT NOT NULL AUTO_INCREMENT, --INT tipo inteiro, AUTO INCREMENT o SQL vai gerando 1,2,3...-- 
nome VARCHAR (30) NOT NULL,  
nascimento date,   --formato de data 
sexo ENUM ('M', 'F'),  --ENUM: lista de opções permitidas, se der 'Z' retorna erro
peso DECIMAL(5,2), -- Total de digitos, são as casas após a vírgula (ex: 125,02)
altura decimal (3,2), --(1,65)
nacionalidade VARCHAR(20) DEFAULT 'Brasil',   --DEFAULT: Se não informar, o padrão para preenchimento é BRASIL
PRIMARY KEY (ID) -- Define o campo ID como a Chave Primária. É o "CPF" da linha, garantindo que nunca existam duas pessoas com o mesmo ID.
) DEFAULT CHARSET = utf8;


--NOT NULL, regra que impede que o campo fique vazio
--VARCHAR(X) texto variável que ocupada até X caracteres
--utf8 > Define que esta tabela aceita acentos e caracteres especiais (Português).

DESCRIBE pessoas