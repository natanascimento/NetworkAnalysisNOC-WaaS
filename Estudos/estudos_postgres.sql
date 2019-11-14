/*
    Estudos dirigidos para o uso do SGBD PostgreSQL
*/


/*Removendo coluna*/
ALTER TABLE /*nome da tabela*/ DROP COLUMN /*nome da coluna*/

/*Renomeando Coluna*/
ALTER TABLE /*nome da tabela*/ RENAME COLUMN /*nome da coluna*/ TO /*novo nome da coluna*/

/*Atualizando valores de uma determinada tabela*/
UPDATE /*nome da tabela*/
SET /*nome da coluna*/ = /*valor a ser inserido*/
WHERE COD_REF = **codigo**; /*ao atualizar um valor, o ideal é que se basei em um código atomico como chaves primarias*/

/*Renomear Tabela*/
ALTER TABLE /*nome da tabela*/ RENAME TO /*novo nome da tabela*/;

/*Alterar o tipo da coluna*/
ALTER TABLE /*nome da tabela*/ ALTER COLUMN /*nome da coluna*/ type /*tipo do dado*/

/*Criando Tabela*/
CREATE TABLE /*nome da tabela*/ (
 /*nome da coluna*/ integer CONSTRAINT pk_/*nome da coluna*/ PRIMARY KEY,
 /*nome da coluna*/ varchar(30) NOT NULL, 
 /*nome da coluna*/ varchar(40) NOT NULL,
 /*nome da coluna*/ date
);

/*Excluindo tabela*/
DROP TABLE /*nome da tabela*/

/*Criando Tabela com base em outra*/
create table /*nome da tabela*/ as (select * from /*nome da tabela*/)


/*Visualizando os schemas presentes no banco Postgresql*/
select * from pg_tables where schemaname = /*nome no schema*/