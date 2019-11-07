/*etl_pipeline_zabbix*/

/*query para realizar a localização e alteração de dados dentro do db do zabbix e posteriormente rodar dentro do Pentaho*/
select t.*,

    /*ies*/
    case when t.id_unidade = 100 then 1 
         when t.id_unidade = 106 then 2 end as id_ies

    from (select *, to_timestamp (clock)::timestamp without time zone as data,
    
    /*unidade*/
	case when strpos (lower(name),'far') > 0 then 100
		 when strpos (lower(name),'far mini') > 0 then 101
		 when strpos (lower(name),'cen') > 0 then 102
		 when strpos (lower(name),'med') > 0 then 103
		 when strpos (lower(name),'labc') > 0 then 104
		 when strpos (lower(name),'hcir') > 0 then 105
		 when strpos (lower(name),'fits') > 0 then 106
		 when strpos (lower(name),'fits mini') > 0 then 107
		 when strpos (lower(name),'ben') > 0 then 108
		 when strpos (lower(name),'ita') > 0 then 109
		 when strpos (lower(name),'ita mini') > 0 then 110
		 when strpos (lower(name),'pro') > 0 then 111
		 when strpos (lower(name),'est') > 0 then 112
		 when strpos (lower(name),'umb') > 0 then 113
		 when strpos (lower(name),'neo') > 0 then 114
		 when strpos (lower(name),'nsg') > 0 then 115
		 when strpos (lower(name),'nss') > 0 then 116
		 when strpos (lower(name),'car') > 0 then 117
		 when strpos (lower(name),'cax') > 0 then 118
		 when strpos (lower(name),'col') > 0 then 119
		 when strpos (lower(name),'gar') > 0 then 120
		 when strpos (lower(name),'gir') > 0 then 121
		 when strpos (lower(name),'pet') > 0 then 122
		 when strpos (lower(name),'pied') > 0 then 123
		 when strpos (lower(name),'ara') > 0 then 124
		 when strpos (lower(name),'tob') > 0 then 125
		 when strpos (lower(name),'vdc') > 0 then 126
		 when strpos (lower(name),'fslf') > 0 then 127
		 when strpos (lower(name),'espa') > 0 then 128
		 when strpos (lower(name),'alg') > 0 then 129
		 when strpos (lower(name),'fst') > 0 then 130
		 when strpos (lower(name),'pov') > 0 then 131
		 when strpos (lower(name),'lag') > 0 then 132
		 when strpos (lower(name),'mos') > 0 then 133
		 when strpos (lower(name),'sal') > 0 then 134
		 when strpos (lower(name),'pa') > 0 then 135
		 when strpos (lower(name),'ver') > 0 then 136 
		 when strpos (lower(name), 'nin') > 0 then 137 end as id_unidade,

    /*state*/
    case when value = 1 then 'down'
         when value = 0 then 'up' end as estado_ap

from events 
	
where (strpos(lower(name), 'ap')) > 0) t