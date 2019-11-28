create table teltec_bi.ies(
    id_ies integer primary key,
    nome_ies varchar (10)
);

create table teltec_bi.unidades(
	id_unidade integer primary key,
	id_ies integer,
	nome_unidade varchar (20)
);

create table teltec_bi.dados_client_count(
	id_ssid integer,
	id_unidade integer,
	associados numeric (5),
	autenticados numeric(5),
	event_time timestamp without time zone,
	foreign key (id_ssid) references teltec_bi.ssid (id_ssid)
);

ALTER TABLE teltec_bi.ies ADD FOREIGN KEY(id_ies) REFERENCES teltec_bi.ies (id_ies);
ALTER TABLE teltec_bi.unidades ADD FOREIGN KEY(id_unidade) REFERENCES teltec_bi.unidades (id_unidade);
ALTER TABLE teltec_bi.dados_gerais ADD FOREIGN KEY(id_ssid) REFERENCES teltec_bi.ssid (id_ssid);
ALTER TABLE teltec_bi.ssid ADD FOREIGN KEY(id_ssid) REFERENCES teltec_bi.ssid (id_ssid);