
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

****COPIADO TABELA****
create table ***nome da tabela*** as (select * from ***nome da tabela***)


/*Querys teste */

/*select * from pg_tables where schemaname = 'teltec_bi'*/

/*create table teltec_bi.ssid as (select * from public.ssid)*/

/*create table teste.teste as (select * from teltec_bi.ssid)*/

