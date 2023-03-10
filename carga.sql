
--1
INSERT ALL 
into T_JKC_PAIS (ID_PAIS, CD_INTERNACIONAL_PAIS, NM_PAIS) VALUES (1 , 1 , 'Brasil')
SELECT * FROM DUAL;

--2
INSERT ALL 
into T_JKC_ESTADO (ID_ESTADO, ID_PAIS, NM_ESTADO, SG_ESTADO) VALUES (1 , 1 , 'Sao Paulo','SP')
into T_JKC_ESTADO (ID_ESTADO, ID_PAIS, NM_ESTADO, SG_ESTADO) VALUES (2 , 1 ,  'Rio Grando do Sul','RS')
SELECT * FROM DUAL;

--3
INSERT ALL
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 1 , 1 ,'Mogi Guacu')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 2 , 1 ,'Itupeva')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 3 , 1 ,'Sao Carlos')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 4 , 1 ,'Valinhos')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 5 , 1 ,'Sao Paulo')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 6 , 2 ,'Nova Araca')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 7 , 1 ,'Garca')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 8 , 1 ,'Diadema')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 9 , 1 ,'Piracicaba')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 10 , 1 ,'Campinas')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 11 , 1 ,'ITATIBA')
INTO T_JKC_CIDADE (ID_CIDADE, ID_ESTADO, NM_CIDADE) VALUES ( 12 , 1 ,'SERTAOZINHO')
SELECT * FROM DUAL;

--4
INSERT ALL
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	1	,	1	,'Martinho Prado Junior')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	2	,	2	,'Santa Julia')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	3	,	3	,'Vila Morumbi')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	4	,	4	,'Jardim Itapua')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	5	,	5	,'Jardim Alzira')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	6	,	3	,'Cidade Jardim')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	7	,	6	,'Dona Irene')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	8	,	7	,'Estacao Velha')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	9	,	8	,'Serraria')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	10	,	8	,'Jardim Gazuza')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	11	,	9	,'Agua Branca')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	12	,	10	,'Centro')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	13	,	11	,'JARDIM ESTER')
Into T_JKC_BAIRRO(ID_BAIRRO, ID_CIDADE, NM_BAIRRO)Values(	14	,	12	,'Cinep - Cidade Industrial e Empresarial')
SELECT * FROM DUAL;


--5
INSERT ALL
Into T_JKC_TIPO_LOGRADOURO(ID_TP_LOGRADOURO, NM_TIPO_LOGRADOURO)Values(	1	, 'Comercial' )
Into T_JKC_TIPO_LOGRADOURO(ID_TP_LOGRADOURO, NM_TIPO_LOGRADOURO)Values(	2	, 'Estrada' )
Into T_JKC_TIPO_LOGRADOURO(ID_TP_LOGRADOURO, NM_TIPO_LOGRADOURO)Values(	3	, 'Rua' )
SELECT * FROM DUAL;

--6
INSERT ALL
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 1 , 1	, 1 , 1 ,'R. Alipio Rodrigues Ferreira',13855025)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 2 , 1	, 2 , 1 ,'R. Alipio Simoes',13295000)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 3 , 1	, 3 , 1 ,'R. Icarai',13572010)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 4 , 1	, 4 , 1 ,'R. Isaura Aparecida Oliveira Barbosa Terini',13273105)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 5 , 1	, 5 , 1 ,'R. Faustino Xavier Novais',03986230)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 6 , 1	, 6 , 1 ,'R. Bernardino Fernandes Nunes',13566490)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 7 , 1	, 7 , 1 ,'R. Alberto Primieri',95350000)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 8 , 1	, 8 , 2 ,'Av. Eustachio Scalzo',17400000)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 9 , 1	, 9 , 2 ,'Av. Henrique de Leo',09981000)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 10 , 1	, 10 , 2 ,'R. Alipio Rodrigues Ferreira',13855025)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 11 , 1	, 11 , 2 ,'ESTRADA ANTONIO ABDALLA',13424700)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 12 , 1	, 12 , 2 ,'RUA TREZE DE MAIO',13350000)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 13 , 1	, 13 , 2 ,'RUA JOSE SOAVE',13255100)
Into T_JKC_LOGRADOURO (ID_LOGRADOURO, ID_TP_LOGRADOURO, ID_BAIRRO, CD_TP_LOGRADOURO, DS_LOGRADOURO, NR_CEP) Values ( 14 , 1	, 14 , 2 ,'Rua Jose Batista Soares',14176119)
SELECT * FROM DUAL;

--7
INSERT ALL
into T_JKC_RAMO_ATUACAO (ID_RAMO,NM_RAMO) values (1,'Fab de embalagens de material plastico')
into T_JKC_RAMO_ATUACAO (ID_RAMO,NM_RAMO) values (2,'Fab de equipamentos e accs para seguranca ')
into T_JKC_RAMO_ATUACAO (ID_RAMO,NM_RAMO) values (3,'Fab de equip hidr??ulicos e pneumaticos, pecas e accs')
into T_JKC_RAMO_ATUACAO (ID_RAMO,NM_RAMO) values (4,'Fab de outros brinquedos e jogos recreativos')
into T_JKC_RAMO_ATUACAO (ID_RAMO,NM_RAMO) values (5,'Fab de m??quinas ind??strias metal??rgica pe??as acess??rios')
SELECT * FROM DUAL;

--8

Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (1,'1','22597143000165','FERPLASTIC INDUSTRIA E COMERCIO DE EMBALAGENS LTDA','FERPLASTIC',to_date('08/06/15','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (2,'1','11204048000138','LOGIPLAS INDUSTRIA E COMERCIO DE INJECAO DE PLASTICOS LTDA','LOGIPLAS',to_date('03/09/09','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (3,'1','12232522000106','PLASTIMOLDES FERRAMENTARIA E INJECAO DE PLASTICOS LTDA','PLASTIMOLDES',to_date('04/04/08','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (4,'1','41497831000106','DVK INJECAO DE PLASTICOS LTDA','DVK',to_date('08/04/21','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (5,'1','1226746000180','PLASTIFAZ FERRAMENTARIA E INJECAO DE PLASTICOS EM GERAL EIRELI','PLASTIFAZ ',to_date('27/05/96','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (6,'1','9125108000185','QUALITY INJECAO DE PLASTICOS','QUALITY',to_date('12/07/07','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (7,'1','5779524000146','PLASFERSERRA INJECAO DE PLASTICOS EIRELI','PLASFERSERRA',to_date('21/07/03','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (8,'1','32340209000190','MF INJECAO DE PLASTICOS LTDA','MF INJECAO DE PLASTICOS',to_date('27/05/96','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (9,'1','26843337000154','DOUGLAS SOARES CRUZ','INPROTEC',to_date('11/01/17','DD/MM/RR'),null,'0');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (10,'2','61716593000181','MORGEL INDUSTRIA DE PLASTICOS LTDA','MORGEL INDUSTRIA DE PLASTICOS LTDA',to_date('05/09/69','DD/MM/RR'),null,'0');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (11,'3','46067575000122','UCAF INDUSTRIA E COMERCIO DE PECAS FELIPPE EIRELI',null,to_date('21/09/81','DD/MM/RR'),'Internet','0');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (12,'1','23250490000180','PHOENIX INDUSTRIA E COMERCIO DE PLASTICOS EIRELI',null,to_date('10/09/15','DD/MM/RR'),'Internet','0');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (13,'4','11894930000152','BRINQUEDOS ZUCATOYS INDUSTRIA E COMERCIO EIRELI',null,to_date('04/05/10','DD/MM/RR'),'Internet','1');
Insert into T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ,DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONT,ST_PROSPECCAO_CLIENTE) values (14,'5','30233758000130','PLASMASICCH MANUTENCAO INDUSTRIAL EIRELI',null,to_date('18/04/18','DD/MM/RR'),'Internet','1');


--9
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('1','1','1',to_date('08/06/15','DD/MM/RR'),null,'69','Rua',null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('2','2','2',to_date('03/09/09','DD/MM/RR'),null,'170','Rua',null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('3','3','3',to_date('04/04/08','DD/MM/RR'),null,'50','Rua',null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('4','4','4',to_date('08/04/21','DD/MM/RR'),null,'36','Rua',null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('5','5','5',to_date('23/12/00','DD/MM/RR'),null,'238','Rua',null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('6','6','6',to_date('12/07/07','DD/MM/RR'),null,'635','Rua','Bloco SO 04 BL 1');
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('7','7','7',to_date('21/07/03','DD/MM/RR'),null,'75','Rua',null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('8','8','8',to_date('02/01/19','DD/MM/RR'),null,'200','Avenida','Box 16 E 17');
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('9','9','9',to_date('11/01/17','DD/MM/RR'),null,'404',null,null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('10','10','10',to_date('05/09/69','DD/MM/RR'),null,'725',null,null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('11','11','11',to_date('21/09/81','DD/MM/RR'),null,'651',null,null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('12','12','12',to_date('10/09/15','DD/MM/RR'),null,'32',null,null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('13','13','13',to_date('04/05/10','DD/MM/RR'),null,'88','GALPAO03 E 04 - JARDIM ESTER',null);
Insert into T_JKC_EMP_LOGR (ID_LOGR_EMPRESA,ID_LOGRADOURO,ID_EMPRESA,DT_INICIO,DT_TERMINO,NR_ENDERECO,DS_COMPLEMENTO,DS_PONTO_REFERENCIA) values ('14','14','14',to_date('18/04/18','DD/MM/RR'),null,'396',null,null);


--10

INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (1,1,'avaliacao e cotacao',to_date('02/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('02/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (2,2,'avaliacao e cotacao',to_date('06/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('06/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (3,3,'avaliacao e cotacao',to_date('09/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('09/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (4,4,'avaliacao e cotacao',to_date('13/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('13/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (5,5,'avaliacao e cotacao',to_date('16/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('16/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (6,6,'avaliacao e cotacao',to_date('20/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('20/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (7,7,'avaliacao e cotacao',to_date('23/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('23/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (8,8,'avaliacao e cotacao',to_date('27/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('27/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (9,9,'avaliacao e cotacao',to_date('30/01/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('30/01/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (10,10,'avaliacao e cotacao',to_date('03/02/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('03/02/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (11,11,'avaliacao e cotacao',to_date('06/02/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('06/02/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (12,12,'avaliacao e cotacao',to_date('10/02/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('10/02/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (13,13,'avaliacao e cotacao',to_date('13/02/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('13/02/2023', 'DD/MM/RRRR'),NULL,NULL,'P');
INSERT INTO T_JKC_AGENDA_VISITA (ID_AGENDA_VISITA, ID_LOGR_EMPRESA, TP_VISITA, DT_AGENDA, DS_RESUMIDA_VISITA, DS_LAUDO_VISITA, VL_VISITA, VL_DESCONTO, DT_INICIO_VISITA, DT_TERMINO_VISITA, QT_HORAS_VISITA, ST_VISITA) VALUES (14,14,'avaliacao e cotacao',to_date('17/02/2023', 'DD/MM/RRRR'),'visita para avaliar maquinas e elaborar previa de cotacao',NULL,NULL,NULL,to_date('17/02/2023', 'DD/MM/RRRR'),NULL,NULL,'P');

--11

Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('1','ergonescritorio@terra.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('2','contato@logiplas.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('3','katia@plastimoldes.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('4','elpozza@yahoo.com','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('5','plastifaz@plastifaz.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('6','cnunes42@terra.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('7','atendimento@plasferserra.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('8','zurichcontabil@gmail.com','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('9','inprotec@inprotecinjecao.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('10','morgel@morgel.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('11','comercial@ucat.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('12','brugagliardi@gmail.com','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('13','financeiro@zucatoys.com.br','A');
Insert into T_JKC_EMAIL (ID_EMAIL,DS_EMAIL,ST_STATUS) values ('14','plasmasicch.comercial@gmail.com','A');

--12
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('1','1',to_date('08/06/15','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('2','2',to_date('03/09/09','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('3','3',to_date('04/04/08','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('4','4',to_date('08/04/21','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('5','5',to_date('23/12/00','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('6','6',to_date('12/07/07','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('7','7',to_date('23/07/03','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('8','8',to_date('02/01/19','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('9','9',to_date('11/01/17','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('10','10',to_date('05/09/69','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('11','11',to_date('21/09/81','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('12','12',to_date('10/09/15','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('13','13',to_date('04/05/10','DD/MM/RR'),null);
Insert into T_JKC_EMP_EMAIL (ID_EMPRESA,ID_EMAIL,DT_INICIO,DT_TERMINO) values ('14','14',to_date('18/04/18','DD/MM/RR'),null);

--13
Insert into T_JKC_TIPO_TELEFONE (ID_TIPO_FONE,DS_TIPO_FONE) values ('1','Whatsapp');
Insert into T_JKC_TIPO_TELEFONE (ID_TIPO_FONE,DS_TIPO_FONE) values ('2','Fixo');

--14
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('1','2','55','11','56310022','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('2','2','55','11','45912492','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('3','2','55','16','34126134','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('4','2','55','19','92944872','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('5','1','55','11','940190118','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('6','2','55','16','33749483','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('7','2','55','54','32751122','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('8','1','55','14','997733632','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('9','1','55','11','983864065','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('10','2','55','11','40666455','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('11','1','55','19','34332932','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('12','2','55','19','96043490','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('13','1','55','19','39485151','A');
Insert into T_JKC_TELEFONE (ID_TELEFONE,ID_TIPO_FONE,NR_DDI,NR_DDD,NR_TELEFONE,ST_STATUS) values ('14','1','55','16','39456998','A');

--15
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('1','1',to_date('20/06/15','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('2','2',to_date('03/09/09','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('3','3',to_date('04/04/08','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('4','4',to_date('08/04/21','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('5','5',to_date('23/12/00','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('6','6',to_date('12/07/07','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('7','7',to_date('21/07/03','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('8','8',to_date('02/01/19','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('9','9',to_date('11/01/17','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('10','10',to_date('05/09/69','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('11','11',to_date('21/09/81','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('12','12',to_date('10/09/15','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('13','13',to_date('04/05/10','DD/MM/RR'),null);
Insert into T_JKC_EMP_TELEF (ID_EMPRESA,ID_TELEFONE,DT_INICIO,DT_TERMINO) values ('14','14',to_date('18/04/18','DD/MM/RR'),null);

--16
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('1','Sociedade Empresaria','Ferplastic',to_date('08/06/15','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('2','Danilo Batista Jacob','Danilo',to_date('10/08/84','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('3','Katia Regina Frederico de Godoy','Katia',to_date('15/02/79','DD/MM/RR'),'F');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('4','Marlene Aparecida Facini Floriano','Marlene',to_date('13/12/82','DD/MM/RR'),'F');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('5','Valeria Martinez Fazolin','Valeria',to_date('13/07/72','DD/MM/RR'),'F');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('6','Edmundo Alvares Ferreira Filho','Edmundo',to_date('13/07/80','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('7','Ivo Celant','Ivo',to_date('06/09/75','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('8','Fabio Luiz de Oliveira Viana','Fabio',to_date('05/12/84','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('9','Douglas Soares Cruz','Douglas Inprotec',to_date('01/01/90','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('10','Oswaldo Fromm','Oswaldo Morgel',to_date('01/01/50','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('11','Gilberto Carlos Felippe ','Gilberto',to_date('30/09/69','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('12','Bruna Gagliardi','Bruna',to_date('01/02/89','DD/MM/RR'),'F');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('13','Renato Pereira','Renato',to_date('01/10/68','DD/MM/RR'),'M');
Insert into T_JKC_PROPRIETARIO (ID_PROPRIETARIO,NM_PROPRIETARIO,NM_APELIDO,DT_NASC,ST_GENERO_BIOLOGICO) values ('14','Leonardo Urizzi Sicchieri','Leonardo',to_date('07/05/83','DD/MM/RR'),'M');


--17
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('1','1',to_date('08/06/15','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('2','2',to_date('03/09/09','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('3','3',to_date('04/04/08','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('4','4',to_date('10/06/22','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('5','5',to_date('23/12/00','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('6','6',to_date('12/07/07','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('7','7',to_date('23/07/03','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('8','8',to_date('02/01/19','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('9','9',to_date('11/01/17','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('10','10',to_date('05/09/69','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('11','11',to_date('21/09/81','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('12','12',to_date('10/09/15','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('13','13',to_date('04/05/10','DD/MM/RR'),null);
Insert into T_JKC_EMPRESA_PROP (ID_EMPRESA,ID_PROPRIETARIO,DT_INICIO,DT_TERMINO) values ('14','14',to_date('18/04/18','DD/MM/RR'),null);


--18
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('1','M','injetora com servibombas','Equipadas com o moderno sistema?????Stop and Go?????que proporciona maior velocidade, alta precis??o e baixo consumo de energia. ');
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('2','M','Injetoras Eletrica','Injetoras El??tricas de alta performance especialmente desenvolvidas para ciclos r??pidos e pe??as de paredes finas, destacam-se pela alta velocidade e precis??o com elevada efici??ncia energ??tica. ');
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('3','M','Injetora Hibrida','A injetora h??brida ROMI ES 300 foi desenvolvida para a produ????o de pe??as pl??sticas que exijam alta raz??o de inje????o, m??xima precis??o e ciclos ultrarr??pidos com o menor consumo de energia. ');
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('4','M','Injetora Dupla Placa','Injetoras de Pl??stico BOLE Dupla Placa S??rie DK??sistema patenteado de travamento das colunas as quais s??o forjadas em pe??a ??nica, placa m??vel apoiada por guias lineares, maior curso de abertura e placas retangulares (wide size) que possibilita moldes maiores em m??quinas menores. Sistema de plastifica????o projetado na Alemanha e design exclusivo da estrutura do cilindro de inje????o.');
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('5','M','Injecao de termoplastico','M??quina Injetora de Pl??stico');
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('6','M','Extrusora de filme','Fabricado em a??os especiais, possui anel de resfriamento com dupla sa??da de ar , cujo perfeito sopro permite a extrus??o de filmes com qualidade em brilho e espessura, nos diversos tipos de materiais, como baixa densidade(PEBD), linear (PEBDL) e alta densidade (PEAD).');
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('7','M','EMPACOTADORAS','Destinada a produ????o de pacotes prontos com medidas de at?? 250 mm. O equipamento apresenta vantagens de aplica????o em condi????es de excesso de p?? (do produto e/ou ambiente) ou embalagem muito fina, onde o tracionamento por correia de arraste n??o se mostre t??o eficaz.
O conceito da MM-250 ?? uma releitura da tra????o de filme por movimento de sobe e desce do quadro de solda ??? Mesa M??vel. Adequada ??s normas NR-12, a MM-250 apresenta opcionais modularizados, atendendo as diferentes necessidades do mercado.');
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('8','M','Alta Frequ??ncia para Brinquedo Infl??vel','M??quina projetada para soldar qualquer material a base de pvc em linha reta ou curva, entre outras vantagens possui uma dist??ncia maior entre o pist??o e a coluna de fixa????o, proporcionando o acondicionamento de maior quantidade de material, facilitando a fabrica????o de produto com grande formato.');
Insert into T_JKC_CATEGORIA_MAQUINA (ID_CATEGORIA,TP_CATEGORIA_MAQUINA,NM_CATEGORIA,DS_COMPLETA_CATEGORIA_MAQ) values ('9','M','Aplainadora','A PM310 ?? uma m??quina de fresar eficiente e altamente manobr??vel, com uma largura de corte de 1.000 mm (39,4 pol) que executa a remo????o controlada e de profundidade total de pavimentos de asfalto e concreto em uma ??nica passada.');

--19
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('1','12121001','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('2','12121002','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('3','12121003','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('4','12121004','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('5','12121005','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('6','12121006','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('7','12121007','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('8','12121008','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('9','12121009','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('10','12121010','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('11','12121011','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('12','12121012','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('13','12121013','Fornecedor n??o identificado','A');
Insert into T_JKC_EQUIP_IOT (ID_EQUIP_IOT,NR_SERIE,NM_FORNECEDOR,ST_EQUIP_IOT) values ('14','12121014','Fornecedor n??o identificado','A');


--20
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('1','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('2','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('3','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('4','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('5','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('6','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('7','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('8','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('9','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('10','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('11','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('12','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('13','Fabricante n??o encontrando');
Insert into T_JKC_FABRICANTE_MAQ (ID_FABRICANTE,NM_FABRICANTE) values ('14','Fabricante n??o encontrando');


--21
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('1','1','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('2','2','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('3','3','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('4','4','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('5','5','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('6','6','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('7','7','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('8','8','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('9','9','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('10','10','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('11','11','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('12','12','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('13','13','Descri????o n??o encontrada');
Insert into T_JKC_MODELO_MAQ (ID_MODELO_MAQUINA,ID_FABRICANTE,DS_MODELO_MAQUINA) values ('14','14','Descri????o n??o encontrada');


--22
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('1','1','1','1','ROMI EN 100','Brasil',to_date('10/08/17','DD/MM/RR'),'A','172 KW/H','EN100','601','1',to_date('01/01/18','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('2','2','2','2','ROMI EL 75','Brasil',to_date('10/10/17','DD/MM/RR'),'A','175 KW/H','EL75','701','2',to_date('01/01/18','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('3','3','3','3','ROMI ES 300','Brasil',to_date('15/10/17','DD/MM/RR'),'A','172 KW/H','ES300','801','3',to_date('01/01/18','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('4','4','4','2','ROMI EL 220','Brasil',to_date('15/10/19','DD/MM/RR'),'A','179 KW/H','EL220','901','4',to_date('08/05/21','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('5','5','5','1','ROMI EM 170','Brasil',to_date('15/10/16','DD/MM/RR'),'A','180 KW/H','EM170','101','5',to_date('15/09/17','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('6','6','6','4','DK-520T','Brasil',to_date('15/10/21','DD/MM/RR'),'A','180 KW/H','BL520DK/Z2950','101','6',to_date('15/10/22','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('7','7','7','2','110T-BL110FE','Brasil',to_date('05/10/21','DD/MM/RR'),'A','180 KW/H','BL110FE','103','7',to_date('20/08/22','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('8','8','8','1','ROMI EM 175','Brasil',to_date('20/01/20','DD/MM/RR'),'A','180 KW/H','EM175','180','8',to_date('20/08/22','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('9','9','9','5','SSF250',null,to_date('15/10/02','DD/MM/RR'),'A','5,5kW',null,null,'9',to_date('01/01/18','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('10','10','10','5','SINITRON SYA-200V',null,to_date('01/01/08','DD/MM/RR'),'A','5kW',null,null,'10',to_date('01/01/08','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('11','11','11','6','MG 75','Brasil',to_date('08/03/19','DD/MM/RR'),'A','11 kw','FD890','451','11',to_date('01/01/19','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('12','12','12','7','MM 250','Brasil',to_date('04/10/15','DD/MM/RR'),'A','11 kw','MR580','764','12',to_date('29/03/20','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('13','13','13','8','IT100','Brasil',to_date('21/02/17','DD/MM/RR'),'A','??10 kw','AB50N','566','13',to_date('14/04/21','DD/MM/RR'),null);
Insert into T_JKC_EMP_MAQ_INDUSTRIAL (ID_EMPRESA,ID_MAQ_INDUSTRIAL,ID_MODELO_MAQUINA,ID_CATEGORIA,NM_MAQUINA,NM_PAIS_ORIGEM,DT_FABRICACAO,ST_STATUS,DS_VOLTAGEM,NR_NUM_SERIE,NR_PLANTA_FISICA_MAQ,CD_EQUIP_IOT,DT_INICIO,DT_TERMINO) values ('14','14','14','9','PM310','Brasil',to_date('01/10/15','DD/MM/RR'),'A','246 kW','NC70C','258','14',to_date('11/06/20','DD/MM/RR'),null);


--23
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('1','1','1','1',to_date('01/01/18','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('2','2','2','2',to_date('01/01/18','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('3','3','3','3',to_date('01/01/18','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('4','4','4','4',to_date('08/05/21','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('5','5','5','5',to_date('15/09/17','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('6','6','6','6',to_date('15/09/17','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('7','7','7','7',to_date('20/08/22','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('8','8','8','8',to_date('20/08/22','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('9','9','9','9',to_date('01/01/18','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('10','10','10','10',to_date('02/02/18','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('11','11','11','11',to_date('01/01/18','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('12','12','12','12',to_date('01/01/18','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('13','13','13','13',to_date('01/01/18','DD/MM/RR'),null,'A');
Insert into T_JKC_MAQ_IOT (ID_MAQ_IOT,ID_MAQ_INDUSTRIAL,ID_EMPRESA,ID_EQUIP_IOT,DT_INICIO,DT_TERMINO,ST_IOT_MAQ) values ('14','14','14','14',to_date('01/01/18','DD/MM/RR'),null,'A');
