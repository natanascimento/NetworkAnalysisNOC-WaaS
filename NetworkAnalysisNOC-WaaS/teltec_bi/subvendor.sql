
/*Inserindo em teltec_bi.contrle_versao*/

create table teltec_bi.subvendor (
	id_subvendor serial not null,
	id_vendor numeric(3) not null,
	name_subvendor varchar (25) not null
)

/*android*/
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (10, 'Xiaomi');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (10, 'LG');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (10, 'Asus');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (10, 'Nokia');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (10, 'Oneplus');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (10, 'Blu');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (10, 'Vivo');

/*Apple*/
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (20, 'Apple');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (20, 'iPhone');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (20, 'iPad');

/*Workstation*/
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (30, 'OS');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (30, 'Workstation');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (30, 'Microsoft');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (30, 'Raspberry Pi');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (30, 'Intel');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (30, 'HP');
        
/*Outros Dispositivos*/
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (40, 'None');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (40, 'Unclassified');
insert into teltec_bi.subvendor (id_vendor, name_subvendor)
values (40, 'Liteon');