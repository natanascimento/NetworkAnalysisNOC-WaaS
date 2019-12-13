/*Script para realizar a captação dos dados e depois a incrementação desses dados dentro do Pentaho Data Intergration*/
select t.*,

    /*Protocol*/
        /*Localizando os protocolos das conexões WiFi*/
    case when strpos (lower (t.protocol), '2.4') > 0 then 10
         when strpos (lower (t.protocol), '802.11ac') > 0 then 20
         when strpos (lower (t.protocol), '5') > 0 then 30
         when strpos (lower (t.protocol), '802.11g') > 0 then 40
         when strpos (lower (t.protocol), '802.11a') > 0 then 50
         when strpos (lower (t.protocol), '802.11b') > 0 then 60 end as id_protocol
    
    from (select *,
    
    /*unidade*/
        /*Analisando as strings dos AP's e apontando as unidades*/
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
    
    /*vendor*/
        /*Android*/
    case when strpos (lower(endpoint),'android') > 0 then 10
         when strpos (lower(endpoint),'motorola') > 0 then 10
         when strpos (lower(endpoint),'samsung') > 0 then 10
         when strpos (lower(endpoint), 'xiaomi') > 0 then 10
		 when strpos (lower(endpoint), 'lg') > 0 then 10
         when strpos (lower(endpoint),'shenzhen') > 0 then 10
         when strpos (lower(endpoint),'hon') > 0 then 10
         when strpos (lower(endpoint), 'asus') > 0 then 10 
         when strpos (lower(endpoint), 'airgo') > 0 then 10
         when strpos (lower(endpoint), 'nokia') > 0 then 10
         when strpos (lower(endpoint), 'oneplus') > 0 then 10 
         when strpos (lower(endpoint), 'blu') > 0 then 10 
         when strpos (lower(endpoint), 'vivo') > 0 then 10
         /*Apple*/
         when strpos (lower(endpoint), 'apple') > 0 then 20
         when strpos (lower(endpoint), 'iphone') > 0 then 20
         when strpos (lower(endpoint), 'ipad') > 0 then 20
         /*Workstation*/
         when strpos (lower(endpoint), 'os') > 0 then 30
         when strpos (lower(endpoint), 'workstation') > 0 then 30
         when strpos (lower(endpoint), 'microsoft') > 0 then 30
         when strpos (lower(endpoint), 'rasp') > 0 then 30
         when strpos (lower(endpoint), 'intel') > 0 then 30
         when strpos (lower(endpoint), 'hp') > 0 then 30
         /*Outros Dispositivos*/
         when strpos (lower(endpoint), 'none') > 0 then 40
         when strpos (lower(endpoint), 'unclassified') > 0 then 40
         when strpos (lower(endpoint), 'tct') > 0 then 40
         when strpos (lower(endpoint), 'rivet') > 0 then 40
         when strpos (lower(endpoint), 'liteon') > 0 then 40 end as id_vendor,
    
    /*ssid*/
        /*Localizando SSID*/
    case when strpos (lower(ssid), 'wifi') > 0 then 200
         when strpos (lower(ssid), 't8021x') > 0 then 201
         when strpos (lower(ssid), 'colab') > 0 then 202
         when strpos (lower(ssid), 'fslf') > 0 then 203
         when strpos (lower(ssid), 'decos') > 0 then 205
         when strpos (lower(ssid), 'acad') > 0 then 206
         when strpos (lower(ssid), 'eventos') > 0 then 207
         when strpos (lower(ssid), 'innovation') > 0 then 208 end as id_ssid

		 from teltec_bi.vendor_protocol_temp) t 