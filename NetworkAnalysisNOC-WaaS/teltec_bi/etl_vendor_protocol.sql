/*Script para realizar a captação dos dados e depois a incrementação desses dados dentro do Pentaho Data Intergration*/
select t.*,

    /*Protocol*/
    case when strpos (lower (t.protocol), '2.4') > 0 then 10
         when strpos (lower (t.protocol), '802.11ac') > 0 then 20
         when strpos (lower (t.protocol), '5') > 0 then 30
         when strpos (lower (t.protocol), '802.11g') > 0 then 40
         when strpos (lower (t.protocol), '802.11a') > 0 then 50
         when strpos (lower (t.protocol), '802.11b') > 0 then 60 end as id_protocol
    
    from (select *,
    
    /*unidade*/
	case when strpos (lower(ap_name),'far') > 0 then 100
		 when strpos (lower(ap_name),'far mini') > 0 then 101
		 when strpos (lower(ap_name),'cen') > 0 then 102
		 when strpos (lower(ap_name),'med') > 0 then 103
		 when strpos (lower(ap_name),'labc') > 0 then 104
		 when strpos (lower(ap_name),'hcir') > 0 then 105
		 when strpos (lower(ap_name),'fits') > 0 then 106
		 when strpos (lower(ap_name),'fits mini') > 0 then 107
		 when strpos (lower(ap_name),'ben') > 0 then 108
		 when strpos (lower(ap_name),'ita') > 0 then 109
		 when strpos (lower(ap_name),'ita mini') > 0 then 110
		 when strpos (lower(ap_name),'pro') > 0 then 111
		 when strpos (lower(ap_name),'est') > 0 then 112
		 when strpos (lower(ap_name),'umb') > 0 then 113
		 when strpos (lower(ap_name),'neo') > 0 then 114
		 when strpos (lower(ap_name),'nsg') > 0 then 115
		 when strpos (lower(ap_name),'nss') > 0 then 116
		 when strpos (lower(ap_name),'car') > 0 then 117
		 when strpos (lower(ap_name),'cax') > 0 then 118
		 when strpos (lower(ap_name),'col') > 0 then 119
		 when strpos (lower(ap_name),'gar') > 0 then 120
		 when strpos (lower(ap_name),'gir') > 0 then 121
		 when strpos (lower(ap_name),'pet') > 0 then 122
		 when strpos (lower(ap_name),'pied') > 0 then 123
		 when strpos (lower(ap_name),'ara') > 0 then 124
		 when strpos (lower(ap_name),'tob') > 0 then 125
		 when strpos (lower(ap_name),'vdc') > 0 then 126
		 when strpos (lower(ap_name),'fslf') > 0 then 127
		 when strpos (lower(ap_name),'espa') > 0 then 128
		 when strpos (lower(ap_name),'alg') > 0 then 129
		 when strpos (lower(ap_name),'fst') > 0 then 130
		 when strpos (lower(ap_name),'pov') > 0 then 131
		 when strpos (lower(ap_name),'lag') > 0 then 132
		 when strpos (lower(ap_name),'mos') > 0 then 133
		 when strpos (lower(ap_name),'sal') > 0 then 134
		 when strpos (lower(ap_name),'pa') > 0 then 135
		 when strpos (lower(ap_name),'ver') > 0 then 136 
		 when strpos (lower(ap_name), 'nin') > 0 then 102
		 when strpos (lower(ap_name), 'nvm') > 0 then 119 end as id_unidade,
    
		 from teltec_bi.vendor_protocol_temp) t 