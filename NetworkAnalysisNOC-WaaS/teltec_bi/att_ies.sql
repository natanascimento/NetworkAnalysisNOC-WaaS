/*Alterando Estrutura da antiga tabela CIDADES_ESTADOS para IES*/

ALTER TABLE cidades_estados RENAME TO ies

ALTER TABLE ies RENAME COLUMN id_cidades to id_ies

ALTER TABLE ies RENAME COLUMN nome_cidade to ies_name

ALTER TABLE ies DROP COLUMN uf

/*Atualizando os valores da coluna 'ies_name'*/
UPDATE public.ies
SET ies_name = 'UNIT Sergipe'
WHERE id_ies = 1;

UPDATE public.ies
SET ies_name = 'UNIT Alagoas'
WHERE id_ies = 2;

UPDATE public.ies
SET ies_name = 'UNIT Pernambuco'
WHERE id_ies = 3;

UPDATE public.ies
SET ies_name = 'Faculdade São Luis'
WHERE id_ies = 4;

UPDATE public.ies
SET ies_name = 'FITS'
WHERE id_ies = 5;
