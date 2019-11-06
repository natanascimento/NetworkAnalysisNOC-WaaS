
****REMOVER UMA COLUNA NO POSTGRESQL****
ALTER TABLE ***nomedatabela*** DROP COLUMN ***nomedacoluna***

****RENOMEANDO A COLUNA*****
ALTER TABLE ***nomedatabela*** RENAME COLUMN ***nomedacoluna*** TO ***novonomedacoluna***

****ATUALIZANDO VALORES*****
UPDATE **NOMEDATABELA**
SET **NOMEDACOLUNA** = 'valor'
WHERE COD_REF = **codigo**;

****RENOMEAR TABELA****
ALTER TABLE ***tabelpararenomear*** RENAME TO ***novo_nome***;

/*Alterar o tipo da coluna*/
ALTER TABLE ***tabelparaalterar*** ALTER COLUMN ***colunaparalaterar*** type varchar  /*alterando tipo*/


****CRIANDO UMA NOVA TABELA****
CREATE TABLE **NOMEDATABELA** (
 **NOMEDACOLUNA** integer CONSTRAINT pk_**NOMEDACOLUNA** PRIMARY KEY,
 **NOMEDACOLUNA** varchar(30) NOT NULL, 
 **NOMEDACOLUNA** varchar(40) NOT NULL,
 **NOMEDACOLUNA** date
);

****EXCLUINDO UMA TABELA****
DROP TABLE ***nome da tabela***
