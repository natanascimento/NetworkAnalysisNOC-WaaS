CREATE TABLE controle_versao (
 id_version integer,
 versao varchar, 
 data date,
 mudancas_realizadas varchar
);

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.0', '14/06/2019', 'Configuração do SFTP no Linux e Configuração dos Jobs no Cisco Prime');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.1', '15/06/2019', 'Configuração do Servidor de Arquivos no Linux');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.2', '15/06/2019', 'Modificação e Melhoria do Servidor de Arquivos no Linux');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.3', '15/06/2019', 'Criação das pastas no servidor para realizar o armazenamento dos arquivos CSV oriundos do Prime');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.4.0', '15/06/2019', 'Desenvolvimento do script que realiza a transformação dos dados oriundos do Prime');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.4.1', '15/06/2019', 'Mudança no script, atendendo as localidades');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.4.2', '15/06/2019', 'Teste do script utilizando dados mantidos no servidor de arquivos');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.5', '19/06/2019', 'Teste de análise dos dados presentes na servidor de arquivos');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.6', '21/06/2019', 'Modificação do script do Linux, para incluir mais informações dentro da transformação');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.7.0', '26/06/2019', 'Implementação das dashboards no Power BI');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.7.1', '26/06/2019', 'Teste das dashboards no Power BI');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.7.2', '26/06/2019', 'Implementação dos relatórios no Power BI');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.7.3', '26/06/2019', 'Modificação na dashboard do Power BI');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.7.4', '26/06/2019', 'Atualização da dashboard do Power BI Online');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.7.5', '02/07/2019', 'Ajuste no script do Power BI, responsável por realizar a transformação dos dados');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.8.0', '12/07/2019', 'Atualização da dashboard para inclusão do SSID Tiradentes WiFi, SSID Tiradentes Colab, SSID T8021X');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.8.1', '15/07/2019', 'Atualização da dashboard para inclusão dos SSID FSLF, SSID DeCos');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.0', '18/07/2019', 'Estudo de implementação do ETL e do Data Warehouse');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.1', '19/07/2019', 'Modelagem do Data Warehouse');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.2', '22/07/2019', 'Desenvolvimento do script para inserção dos dados gerais no Data Warehouse');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.3', '23/07/2019', 'Desenvolvimento do script para inserção do fabricante e protocolo no Data Warehouse');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.4', '24/07/2019', 'Modificações e Melhorias no Data Warehouse');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.5', '24/07/2019', 'Modificações e Melhorias no OBDC');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.6', '26/07/2019', 'Atualização do relatório na workspace da UNIT no 365');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.7', '05/08/2019', 'Implementação da toolkit dentro dos gráficos do relatório');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.8', '09/08/2019', 'Melhorias no script do Linux');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (1, '1.9.9', '19/08/2019', 'Modificações e Melhorias no Data Warehouse');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (2, '2.0', '21/08/2019', 'Alteração Visual e Estrutural no relatório do Power BI');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (2, '2.1.0', '21/08/2019', 'Alteração na modelagem dos Data Warehouse');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (2, '2.1.1', '21/08/2019', 'Inclusão do IES');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (2, '2.2.0', '21/08/2019', 'Ajustes no script para inclusão do SSID Tiradentes-Acad');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (2, '2.2.1', '21/08/2019', 'Ajustes no script para inclusão do Polo Paulo Afonso');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (2, '2.2.2', '04/09/2019', 'Atualização na estrutura do banco e na dashboard Client Count');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (2, '2.3', '12/09/2019', 'Modificação e Melhoria na dashboard de Protocolo e Fabricante');

INSERT INTO controle_versao (id_version, versao, data, mudancas_realizadas)
VALUES (2, '2.4', '17/09/2019', 'Inclusão da dashboard referente aos Chromebooks');