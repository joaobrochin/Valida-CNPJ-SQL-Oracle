-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2022-04-16 11:00:03 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g

CREATE SEQUENCE sq_agendamento START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_cat_maquina START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_cod_tipo_fone START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_email START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_email_emp START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_email_prop START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_empresa START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_endereco START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_equip_iot START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_maquina START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_nr_fone_completo START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_proprietario START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_ramo_atuacao START WITH 1 NOCACHE ORDER;

CREATE TABLE t_jkc_agenda_visita (
    id_agenda_visita    NUMBER(10) NOT NULL,
    id_logr_empresa     NUMBER(10) NOT NULL,
    tp_visita           VARCHAR2(30) NOT NULL,
    dt_agenda           DATE NOT NULL,
    ds_resumida_visita  VARCHAR2(300) NOT NULL,
    ds_laudo_visita     VARCHAR2(800),
    vl_visita           NUMBER(10, 2),
    vl_desconto         NUMBER(10, 2),
    dt_inicio_visita    DATE NOT NULL,
    dt_termino_visita   DATE,
    qt_horas_visita     NUMBER(5),
    st_visita           VARCHAR2(5) NOT NULL
)
LOGGING;

ALTER TABLE t_jkc_agenda_visita
    ADD CONSTRAINT ck_jkc_agenda_st CHECK ( st_visita IN (
        'A',
        'AT',
        'C',
        'F',
        'O',
        'P'
    ) );

COMMENT ON TABLE t_jkc_agenda_visita IS
    'Tabela AGENDA  - Contem a informação de agendamento das visitas';

COMMENT ON COLUMN t_jkc_agenda_visita.id_agenda_visita IS
    'codigo da agenda de visita. Item obrigatório e será preenchido automaticamente pelo sistema.';

COMMENT ON COLUMN t_jkc_agenda_visita.tp_visita IS
    'Tipo de visita a ser feita a empresa. Prospecção, Manutenção; Suporte; Consultoria; Reunião Executiva entre outros.';

COMMENT ON COLUMN t_jkc_agenda_visita.dt_agenda IS
    'Data do angendamento - Obrigatorio';

COMMENT ON COLUMN t_jkc_agenda_visita.ds_resumida_visita IS
    'Descrição resumida da visita feita pela JK Control.';

COMMENT ON COLUMN t_jkc_agenda_visita.ds_laudo_visita IS
    'Laudo completo sobre a visita';

COMMENT ON COLUMN t_jkc_agenda_visita.vl_visita IS
    'Valor da visita';

COMMENT ON COLUMN t_jkc_agenda_visita.vl_desconto IS
    'Valor de desconto da visita';

COMMENT ON COLUMN t_jkc_agenda_visita.dt_inicio_visita IS
    'Data de inicio da visita - Opicional ';

COMMENT ON COLUMN t_jkc_agenda_visita.dt_termino_visita IS
    'Data de termino da visita - Opicional';

COMMENT ON COLUMN t_jkc_agenda_visita.qt_horas_visita IS
    'Quantidade de horas totais consumida na visita.';

COMMENT ON COLUMN t_jkc_agenda_visita.st_visita IS
    'Status da visita, Aberto (A), Atendimento (AT), Concluido (C), Freeze (F), Outros (O), Pendente (P) - Obrigatorio';

ALTER TABLE t_jkc_agenda_visita ADD CONSTRAINT pk_jkc_agenda_visita PRIMARY KEY ( id_agenda_visita );

CREATE TABLE t_jkc_bairro (
    id_bairro  NUMBER(8) NOT NULL,
    id_cidade  NUMBER(10) NOT NULL,
    nm_bairro  VARCHAR2(100) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_bairro IS
    'Tabela Bairro - Contem as informações de bairro de um endereço';

COMMENT ON COLUMN t_jkc_bairro.id_bairro IS
    'Codigo do bairro - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_bairro.nm_bairro IS
    'Nome do bairro - Obrigatorio';

ALTER TABLE t_jkc_bairro ADD CONSTRAINT pk_jkc_bairro PRIMARY KEY ( id_bairro );

CREATE TABLE t_jkc_categoria_maquina (
    id_categoria               NUMBER(10) NOT NULL,
    tp_categoria_maquina       VARCHAR2(5) NOT NULL,
    nm_categoria               VARCHAR2(70) NOT NULL,
    ds_completa_categoria_maq  VARCHAR2(600)
)
LOGGING;

ALTER TABLE t_jkc_categoria_maquina
    ADD CHECK ( tp_categoria_maquina IN (
        'M',
        'P'
    ) );

COMMENT ON TABLE t_jkc_categoria_maquina IS
    'Tabela categoria de maquina - Cntema s infoirmações das categorias das maquinas em que uma empresa possui';

COMMENT ON COLUMN t_jkc_categoria_maquina.id_categoria IS
    'Codigo da categoria - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_categoria_maquina.tp_categoria_maquina IS
    'Descrição do tipo da maquina, Plastico (P), Metal (M)';

COMMENT ON COLUMN t_jkc_categoria_maquina.nm_categoria IS
    'Nome da categoria - Obrigatorio';

ALTER TABLE t_jkc_categoria_maquina ADD CONSTRAINT pk_jkc_cat_maq PRIMARY KEY ( id_categoria );

CREATE TABLE t_jkc_cidade (
    id_cidade  NUMBER(10) NOT NULL,
    id_estado  NUMBER(10) NOT NULL,
    nm_cidade  VARCHAR2(120) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_cidade IS
    'Tabela CIDADE - Contem as informações de cidade de um endereço';

COMMENT ON COLUMN t_jkc_cidade.id_cidade IS
    'id da cidade. sequencial e obrigatorio, preenchido automaticamente pelo sistema.';

COMMENT ON COLUMN t_jkc_cidade.nm_cidade IS
    'Nome da cidade - Obrigatorio';

ALTER TABLE t_jkc_cidade ADD CONSTRAINT pk_jkc_cidade PRIMARY KEY ( id_cidade );

CREATE TABLE t_jkc_email (
    id_email   NUMBER(10) NOT NULL,
    ds_email   VARCHAR2(80) NOT NULL,
    st_status  CHAR(1) NOT NULL
)
LOGGING;

ALTER TABLE t_jkc_email
    ADD CONSTRAINT ck_jkc_email_st CHECK ( st_status IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE t_jkc_email IS
    'Tabela de email - Contem as informações de castro de email';

COMMENT ON COLUMN t_jkc_email.id_email IS
    'Codigo do e-mail - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_email.ds_email IS
    'Descrição do e-mail, ou seja o email a ser cadastrado - Obrigatorio';

COMMENT ON COLUMN t_jkc_email.st_status IS
    'Status do email - Ativo ou Inativo - Obrigatorio';

ALTER TABLE t_jkc_email ADD CONSTRAINT pk_jkc_email PRIMARY KEY ( id_email );

CREATE TABLE t_jkc_email_proprietario (
    id_proprietario  NUMBER(6) NOT NULL,
    id_email         NUMBER(10) NOT NULL,
    dt_inicio        DATE NOT NULL,
    dt_termino       DATE
)
LOGGING;

COMMENT ON TABLE t_jkc_email_proprietario IS
    'Tabela associativa entre tabela de proprietario e tabela de email - Contem informação sobre o cadastro de email do proprietario ';

COMMENT ON COLUMN t_jkc_email_proprietario.dt_inicio IS
    'Codigo do cadastro do email vinculado ao proprietario - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_email_proprietario.dt_termino IS
    'Codigo do proprietario - PK - FK - Obrigatorio';

ALTER TABLE t_jkc_email_proprietario ADD CONSTRAINT pk_jkc_prop_email PRIMARY KEY ( id_proprietario,
                                                                                    id_email );

CREATE TABLE t_jkc_emp_email (
    id_empresa  NUMBER(10) NOT NULL,
    id_email    NUMBER(10) NOT NULL,
    dt_inicio   DATE NOT NULL,
    dt_termino  DATE
)
LOGGING;

COMMENT ON TABLE t_jkc_emp_email IS
    'Tabela associativa entre PROPRIETARIO_EMAILl - Contem informação sobre o cadastro de email do proprietario ';

COMMENT ON COLUMN t_jkc_emp_email.dt_inicio IS
    'Data de inicio  do email na empresa.';

COMMENT ON COLUMN t_jkc_emp_email.dt_termino IS
    'Data de término  do email  na empresa.';

ALTER TABLE t_jkc_emp_email ADD CONSTRAINT pk_jkc_emp_email PRIMARY KEY ( id_empresa,
                                                                          id_email );

CREATE TABLE t_jkc_emp_logr (
    id_logr_empresa      NUMBER(10) NOT NULL,
    id_logradouro        NUMBER(10) NOT NULL,
    id_empresa           NUMBER(10) NOT NULL,
    dt_inicio            DATE NOT NULL,
    dt_termino           DATE,
    nr_endereco          NUMBER(8),
    ds_complemento       VARCHAR2(50),
    ds_ponto_referencia  VARCHAR2(500)
)
LOGGING;

COMMENT ON TABLE t_jkc_emp_logr IS
    'Tabela associativa entre EMPRESA_ENDEREÇO - Contem as informações de endereõ da empresa.';

COMMENT ON COLUMN t_jkc_emp_logr.id_logr_empresa IS
    'Codigo do endereço - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_logr.dt_inicio IS
    'Data de entrada da empresa no endereço';

COMMENT ON COLUMN t_jkc_emp_logr.dt_termino IS
    'Data de saida da empresa no endereço - Opcional ';

COMMENT ON COLUMN t_jkc_emp_logr.nr_endereco IS
    'Numero do endereço - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_logr.ds_complemento IS
    'Descrição do complemento do endereço -  Opcional';

ALTER TABLE t_jkc_emp_logr ADD CONSTRAINT pk_jkc_emp_logr PRIMARY KEY ( id_logr_empresa );

CREATE TABLE t_jkc_emp_maq_industrial (
    id_empresa            NUMBER(10) NOT NULL,
    id_maq_industrial     NUMBER(10) NOT NULL,
    id_modelo_maquina     NUMBER(10) NOT NULL,
    id_categoria          NUMBER(10) NOT NULL,
    nm_maquina            VARCHAR2(90) NOT NULL,
    nm_pais_origem        VARCHAR2(60),
    dt_fabricacao         DATE NOT NULL,
    st_status             CHAR(1) DEFAULT 'A' NOT NULL,
    ds_voltagem           VARCHAR2(25) NOT NULL,
    nr_num_serie          VARCHAR2(25),
    nr_planta_fisica_maq  VARCHAR2(15),
    cd_equip_iot          NUMBER(6) NOT NULL,
    dt_inicio             DATE NOT NULL,
    dt_termino            DATE
)
LOGGING;

ALTER TABLE t_jkc_emp_maq_industrial
    ADD CHECK ( st_status IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE t_jkc_emp_maq_industrial IS
    'Tabela de MAQUINA - Contem as iformações de regiostro das maquina que uma empresa possui';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.id_maq_industrial IS
    'Codigo da maquina - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.nm_maquina IS
    'Nome da maquina - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.nm_pais_origem IS
    'Nome do pais de origem da maquina - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.dt_fabricacao IS
    'Data de fabricação - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.st_status IS
    'Status da mquina, Ativo (A), Inativo (I) - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.ds_voltagem IS
    'Descrição da voltagem da maquina - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.nr_num_serie IS
    'Numero de serie da maquina - Opcional';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.nr_planta_fisica_maq IS
    'A localização física dessa máquina na planta da industria.';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.cd_equip_iot IS
    'Codigo do equipamento IOT implementado - FK - Obrigatorio';

COMMENT ON COLUMN t_jkc_emp_maq_industrial.dt_inicio IS
    'A data de inicio de utilização da maquina na industria.';

ALTER TABLE t_jkc_emp_maq_industrial ADD CONSTRAINT pk_jkc_maq_industrial PRIMARY KEY ( id_maq_industrial,
                                                                                        id_empresa );

CREATE TABLE t_jkc_emp_telef (
    id_empresa   NUMBER(10) NOT NULL,
    id_telefone  NUMBER(10) NOT NULL,
    dt_inicio    DATE NOT NULL,
    dt_termino   DATE
)
LOGGING;

COMMENT ON TABLE t_jkc_emp_telef IS
    'Tabela associativa EMPRESA_TELEFONE - Contem as informações que relacionam o numero de telefone com a empresa';

COMMENT ON COLUMN t_jkc_emp_telef.dt_inicio IS
    'Data de inicio do telefone na empresa.';

COMMENT ON COLUMN t_jkc_emp_telef.dt_termino IS
    'Data de término  do telefone na empresa.';

ALTER TABLE t_jkc_emp_telef ADD CONSTRAINT pk_jkc_emp_telef PRIMARY KEY ( id_empresa,
                                                                          id_telefone );

CREATE TABLE t_jkc_empresa (
    id_empresa             NUMBER(10) NOT NULL,
    id_ramo                NUMBER(6) NOT NULL,
    nr_cnpj                NUMBER(14) NOT NULL,
    ds_razao_social        VARCHAR2(100) NOT NULL,
    nm_fantasia            VARCHAR2(100),
    dt_fundacao            DATE NOT NULL,
    ds_origem_cont         VARCHAR2(80),
    st_prospeccao_cliente  CHAR(1) DEFAULT '0' NOT NULL
)
LOGGING;

ALTER TABLE t_jkc_empresa
    ADD CHECK ( st_prospeccao_cliente IN (
        '0',
        '1'
    ) );

COMMENT ON TABLE t_jkc_empresa IS
    'Tabela empresa - Contem as informaçõe de cadastro das empresas (clientes da JK Control)';

COMMENT ON COLUMN t_jkc_empresa.id_empresa IS
    'Codigo da empresa - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_empresa.nr_cnpj IS
    'Numero do CNPJ - Obrigatorio';

COMMENT ON COLUMN t_jkc_empresa.ds_razao_social IS
    'Razão Social - Obrigatorio';

COMMENT ON COLUMN t_jkc_empresa.nm_fantasia IS
    'Nome fantasia -  Obrigatorio';

COMMENT ON COLUMN t_jkc_empresa.dt_fundacao IS
    'Data de fundação - Obrigatorio';

COMMENT ON COLUMN t_jkc_empresa.ds_origem_cont IS
    'Descrição da origem do contato - Obrigatorio';

COMMENT ON COLUMN t_jkc_empresa.st_prospeccao_cliente IS
    'Statua da empresa referente a prospecção, prospecção (1) ou se a empresa é cliente (0)';

ALTER TABLE t_jkc_empresa ADD CONSTRAINT pk_jkc_empresa PRIMARY KEY ( id_empresa );

CREATE TABLE t_jkc_empresa_prop (
    id_empresa       NUMBER(10) NOT NULL,
    id_proprietario  NUMBER(6) NOT NULL,
    dt_inicio        DATE NOT NULL,
    dt_termino       DATE
)
LOGGING;

COMMENT ON TABLE t_jkc_empresa_prop IS
    'Tabela associativa entre PROPRIETARIO_EMPRESA - Contem a informação de posse do proprietario sobre uma ou mais empresas';

COMMENT ON COLUMN t_jkc_empresa_prop.dt_inicio IS
    'Data de inicio da empresa para o proprietario.';

COMMENT ON COLUMN t_jkc_empresa_prop.dt_termino IS
    'Data de término da empresa para o proprietario.';

ALTER TABLE t_jkc_empresa_prop ADD CONSTRAINT pk_jkc_emp_prop PRIMARY KEY ( id_empresa,
                                                                            id_proprietario );

CREATE TABLE t_jkc_equip_iot (
    id_equip_iot   NUMBER(10) NOT NULL,
    nr_serie       VARCHAR2(25) NOT NULL,
    nm_fornecedor  VARCHAR2(70) NOT NULL,
    st_equip_iot   CHAR(1) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_equip_iot IS
    'Tabeça de equipamento IOT que serão implementados nas maquinas';

COMMENT ON COLUMN t_jkc_equip_iot.id_equip_iot IS
    'Codigo do equipamento IoT - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_equip_iot.nr_serie IS
    'Numero de serie do equipamento - Obrigatorio';

COMMENT ON COLUMN t_jkc_equip_iot.nm_fornecedor IS
    'Nome do fornecedor do equipamento - Obrigatorio';

COMMENT ON COLUMN t_jkc_equip_iot.st_equip_iot IS
    'Status do equipamento de  IoT. Pode ser (A)tivo ou (I)nativo.';

ALTER TABLE t_jkc_equip_iot ADD CONSTRAINT pk_jkc_equip_iot PRIMARY KEY ( id_equip_iot );

CREATE TABLE t_jkc_estado (
    id_estado  NUMBER(10) NOT NULL,
    id_pais    NUMBER(10) NOT NULL,
    nm_estado  VARCHAR2(80) NOT NULL,
    sg_estado  CHAR(2) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_estado IS
    'Tabela ESTADO - Contem as informações de estado de um endereço';

COMMENT ON COLUMN t_jkc_estado.id_estado IS
    'Codigo estado - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_estado.nm_estado IS
    'Nome do estado - Obrigatorio';

COMMENT ON COLUMN t_jkc_estado.sg_estado IS
    'Sigla do estado - Obrigatorio';

ALTER TABLE t_jkc_estado ADD CONSTRAINT pk_jkc_estado PRIMARY KEY ( id_estado );

CREATE TABLE t_jkc_fabricante_maq (
    id_fabricante  NUMBER(10) NOT NULL,
    nm_fabricante  VARCHAR2(80) NOT NULL
)
LOGGING;

COMMENT ON COLUMN t_jkc_fabricante_maq.id_fabricante IS
    'id do fabricante da maquina industrial. Chave primaria com preenchimento automatico pelo sistema.';

COMMENT ON COLUMN t_jkc_fabricante_maq.nm_fabricante IS
    'Nome do Fabricante da maquina industrial.';

ALTER TABLE t_jkc_fabricante_maq ADD CONSTRAINT pk_jkc_fabr_maq PRIMARY KEY ( id_fabricante );

CREATE TABLE t_jkc_logradouro (
    id_logradouro     NUMBER(10) NOT NULL,
    id_tp_logradouro  NUMBER(10) NOT NULL,
    id_bairro         NUMBER(8) NOT NULL,
    cd_tp_logradouro  NUMBER(8) NOT NULL,
    ds_logradouro     VARCHAR2(190) NOT NULL,
    nr_cep            NUMBER(8) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_logradouro IS
    'Tabela ENDERECO - Contem as informações decomposta dos endereços';

COMMENT ON COLUMN t_jkc_logradouro.cd_tp_logradouro IS
    'Codigo do tipo de logradouro - FK - Obrigatorio';

COMMENT ON COLUMN t_jkc_logradouro.nr_cep IS
    'Numero do CEP - PK - Obrigatorio';

ALTER TABLE t_jkc_logradouro ADD CONSTRAINT pk_jkc_logradouro PRIMARY KEY ( id_logradouro );

CREATE TABLE t_jkc_maq_iot (
    id_maq_iot         NUMBER(10) NOT NULL,
    id_maq_industrial  NUMBER(10) NOT NULL,
    id_empresa         NUMBER(10) NOT NULL,
    id_equip_iot       NUMBER(10) NOT NULL,
    dt_inicio          DATE NOT NULL,
    dt_termino         DATE,
    st_iot_maq         CHAR(1)
)
LOGGING;

COMMENT ON COLUMN t_jkc_maq_iot.id_maq_iot IS
    'Id da maquina e equipamento de IoT. Uma maquina pode ter vários equipamentos de IoT durante a sua vida útil, pois um IoT sofre manutençao e vai sendo substituido com  o tempo.';

COMMENT ON COLUMN t_jkc_maq_iot.dt_inicio IS
    'Data de inicio de instalação do IoT na maquina.';

COMMENT ON COLUMN t_jkc_maq_iot.dt_termino IS
    'Data de término  de instalação do IoT na maquina.';

COMMENT ON COLUMN t_jkc_maq_iot.st_iot_maq IS
    'O IoT pode estar (A)tivo ou (I)nativo';

ALTER TABLE t_jkc_maq_iot ADD CONSTRAINT pk_jkc_maq_iot PRIMARY KEY ( id_maq_iot );

CREATE TABLE t_jkc_modelo_maq (
    id_modelo_maquina  NUMBER(10) NOT NULL,
    id_fabricante      NUMBER(10) NOT NULL,
    ds_modelo_maquina  VARCHAR2(200) NOT NULL
)
LOGGING;

COMMENT ON COLUMN t_jkc_modelo_maq.id_modelo_maquina IS
    'Id do modelo da maquina indsutrial. Chave primária que deve ser preenchida automaticamente pelo sistema.';

COMMENT ON COLUMN t_jkc_modelo_maq.ds_modelo_maquina IS
    'descrição do modelo de maquina industrial.';

ALTER TABLE t_jkc_modelo_maq ADD CONSTRAINT pk_jkc_modelo_maq PRIMARY KEY ( id_modelo_maquina );

CREATE TABLE t_jkc_pais (
    id_pais                NUMBER(10) NOT NULL,
    cd_internacional_pais  NUMBER(5),
    nm_pais                VARCHAR2(75) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_pais IS
    'Tabela Pais - Contem as informalções de pais de um endereço';

COMMENT ON COLUMN t_jkc_pais.id_pais IS
    'Codigo do pais - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_pais.nm_pais IS
    'Nome do pais - Obrigatorio';

ALTER TABLE t_jkc_pais ADD CONSTRAINT pk_jkc_pais PRIMARY KEY ( id_pais );

CREATE TABLE t_jkc_prop_telefone (
    id_proprietario  NUMBER(6) NOT NULL,
    id_telefone      NUMBER(10) NOT NULL,
    dt_inicio        DATE NOT NULL,
    dt_termino       DATE
)
LOGGING;

COMMENT ON TABLE t_jkc_prop_telefone IS
    'Tabela associativa PROPRIETARIO_TELEFONE - Contem as informações que relacionam o numero de telefone com o proprietario';

COMMENT ON COLUMN t_jkc_prop_telefone.dt_inicio IS
    'Data de Inicio do cadastro do telefone.';

COMMENT ON COLUMN t_jkc_prop_telefone.dt_termino IS
    'Numero do telefone completo - PK - FK - Obrigatorio';

ALTER TABLE t_jkc_prop_telefone ADD CONSTRAINT pk_jkc_prop_telefone PRIMARY KEY ( id_proprietario,
                                                                                  id_telefone );

CREATE TABLE t_jkc_proprietario (
    id_proprietario      NUMBER(6) NOT NULL,
    nm_proprietario      VARCHAR2(90) NOT NULL,
    nm_apelido           VARCHAR2(45),
    dt_nasc              DATE NOT NULL,
    st_genero_biologico  CHAR(1) NOT NULL
)
LOGGING;

ALTER TABLE t_jkc_proprietario
    ADD CHECK ( st_genero_biologico IN (
        'F',
        'M',
        'Q'
    ) );

COMMENT ON TABLE t_jkc_proprietario IS
    'Tabela de proprietarios - Contem as informações de cadastro de proprietarios de empresas';

COMMENT ON COLUMN t_jkc_proprietario.id_proprietario IS
    'Codigo do proprietario  PK Obrigatorio. Esse conteúdo deve ser gerado e preenchido automaticamente pelo sistema.';

COMMENT ON COLUMN t_jkc_proprietario.nm_proprietario IS
    'Nome do proprietario - Obrigatorio';

COMMENT ON COLUMN t_jkc_proprietario.nm_apelido IS
    'Apelido do proprietario - Obrigatorio';

COMMENT ON COLUMN t_jkc_proprietario.dt_nasc IS
    'Data de nascimento - Obrigatorio';

COMMENT ON COLUMN t_jkc_proprietario.st_genero_biologico IS
    'Status do genero, FEMININO (F), MASCULINO (M), QUEER NÃO BINARIO (Q) - Obrigatorio';

ALTER TABLE t_jkc_proprietario ADD CONSTRAINT pk_jkc_proprietario PRIMARY KEY ( id_proprietario );

CREATE TABLE t_jkc_ramo_atuacao (
    id_ramo  NUMBER(6) NOT NULL,
    nm_ramo  VARCHAR2(60) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_ramo_atuacao IS
    'Tabela Ramo - Contem a informações sobre qual o ramo de atuação de uma empresa';

COMMENT ON COLUMN t_jkc_ramo_atuacao.id_ramo IS
    'Codigo do ramo de atuação - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_ramo_atuacao.nm_ramo IS
    'Nome do ramo de atuação - Obrigatorio';

ALTER TABLE t_jkc_ramo_atuacao ADD CONSTRAINT pk_jkc_ramo_atuacao PRIMARY KEY ( id_ramo );

CREATE TABLE t_jkc_telefone (
    id_telefone   NUMBER(10) NOT NULL,
    id_tipo_fone  NUMBER(2) NOT NULL,
    nr_ddi        NUMBER(3),
    nr_ddd        NUMBER(3) NOT NULL,
    nr_telefone   NUMBER(9) NOT NULL,
    st_status     CHAR(1) NOT NULL
)
LOGGING;

ALTER TABLE t_jkc_telefone
    ADD CONSTRAINT ck_jkc_tel_st CHECK ( st_status IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE t_jkc_telefone IS
    'Tabela TELEFONE - Contem as informações de cadastros de telefone ao qual faz vinculo com  proprietario e empresa';

COMMENT ON COLUMN t_jkc_telefone.id_telefone IS
    'Numero de telefone completo - PK -  Obrigatorio';

COMMENT ON COLUMN t_jkc_telefone.nr_ddi IS
    'Numero do DDI - Opcional';

COMMENT ON COLUMN t_jkc_telefone.nr_ddd IS
    'Numero do DDD - Obrigatorio';

COMMENT ON COLUMN t_jkc_telefone.nr_telefone IS
    'Numero de telefone sem o DDI e DDD - Obrigatorio';

COMMENT ON COLUMN t_jkc_telefone.st_status IS
    'Status do telefone, Ativo (A), Inativo (I) - Obrigatorio';

ALTER TABLE t_jkc_telefone ADD CONSTRAINT pk_jkc_telefone PRIMARY KEY ( id_telefone );

CREATE TABLE t_jkc_tipo_logradouro (
    id_tp_logradouro    NUMBER(10) NOT NULL,
    nm_tipo_logradouro  VARCHAR2(50) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_tipo_logradouro IS
    'Tabela Logradouro - Contem as informações de logradouro e tipo do logradouro';

COMMENT ON COLUMN t_jkc_tipo_logradouro.id_tp_logradouro IS
    'Codigo do tipo de logradouro - PK - Obrigatorio';

COMMENT ON COLUMN t_jkc_tipo_logradouro.nm_tipo_logradouro IS
    'Descrição do logradouro - Obrigatorio';

ALTER TABLE t_jkc_tipo_logradouro ADD CONSTRAINT pk_jkc_tipo_logradouro PRIMARY KEY ( id_tp_logradouro );

CREATE TABLE t_jkc_tipo_telefone (
    id_tipo_fone  NUMBER(2) NOT NULL,
    ds_tipo_fone  VARCHAR2(25) NOT NULL
)
LOGGING;

COMMENT ON TABLE t_jkc_tipo_telefone IS
    'Tabela de tipo de telefone - Contem a informação se o telefone é residencial, comercial entre outros';

COMMENT ON COLUMN t_jkc_tipo_telefone.id_tipo_fone IS
    'Codigo do tipo de telefone - PK';

COMMENT ON COLUMN t_jkc_tipo_telefone.ds_tipo_fone IS
    'Qual o tipo do telefone, Residencial, Empresarial, Recado, Celular - Obrigatorio';

ALTER TABLE t_jkc_tipo_telefone ADD CONSTRAINT pk_jkc_tipo_telefone PRIMARY KEY ( id_tipo_fone );

ALTER TABLE t_jkc_maq_iot
    ADD CONSTRAINT fk_emp_maq_iot FOREIGN KEY ( id_maq_industrial,
                                                id_empresa )
        REFERENCES t_jkc_emp_maq_industrial ( id_maq_industrial,
                                              id_empresa )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_logradouro
    ADD CONSTRAINT fk_jkc_bairro_logr FOREIGN KEY ( id_bairro )
        REFERENCES t_jkc_bairro ( id_bairro )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_maq_industrial
    ADD CONSTRAINT fk_jkc_categ_maq FOREIGN KEY ( id_categoria )
        REFERENCES t_jkc_categoria_maquina ( id_categoria )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_bairro
    ADD CONSTRAINT fk_jkc_cidade_bairro FOREIGN KEY ( id_cidade )
        REFERENCES t_jkc_cidade ( id_cidade )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_email
    ADD CONSTRAINT fk_jkc_email_emp FOREIGN KEY ( id_email )
        REFERENCES t_jkc_email ( id_email )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_email_proprietario
    ADD CONSTRAINT fk_jkc_email_prop FOREIGN KEY ( id_email )
        REFERENCES t_jkc_email ( id_email )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_email
    ADD CONSTRAINT fk_jkc_emp_email FOREIGN KEY ( id_empresa )
        REFERENCES t_jkc_empresa ( id_empresa )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_logr
    ADD CONSTRAINT fk_jkc_emp_logr FOREIGN KEY ( id_empresa )
        REFERENCES t_jkc_empresa ( id_empresa )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_agenda_visita
    ADD CONSTRAINT fk_jkc_emp_logr_agenda FOREIGN KEY ( id_logr_empresa )
        REFERENCES t_jkc_emp_logr ( id_logr_empresa )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_maq_industrial
    ADD CONSTRAINT fk_jkc_emp_maq_ind FOREIGN KEY ( id_empresa )
        REFERENCES t_jkc_empresa ( id_empresa )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_empresa_prop
    ADD CONSTRAINT fk_jkc_emp_prop FOREIGN KEY ( id_empresa )
        REFERENCES t_jkc_empresa ( id_empresa )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_telef
    ADD CONSTRAINT fk_jkc_emp_telef FOREIGN KEY ( id_empresa )
        REFERENCES t_jkc_empresa ( id_empresa )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_cidade
    ADD CONSTRAINT fk_jkc_estado_cidade FOREIGN KEY ( id_estado )
        REFERENCES t_jkc_estado ( id_estado )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_maq_iot
    ADD CONSTRAINT fk_jkc_iot_emp_maq FOREIGN KEY ( id_equip_iot )
        REFERENCES t_jkc_equip_iot ( id_equip_iot )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_logr
    ADD CONSTRAINT fk_jkc_logr_emp FOREIGN KEY ( id_logradouro )
        REFERENCES t_jkc_logradouro ( id_logradouro )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_maq_industrial
    ADD CONSTRAINT fk_jkc_modelo_maq FOREIGN KEY ( id_modelo_maquina )
        REFERENCES t_jkc_modelo_maq ( id_modelo_maquina )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_estado
    ADD CONSTRAINT fk_jkc_pais_estado FOREIGN KEY ( id_pais )
        REFERENCES t_jkc_pais ( id_pais )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_email_proprietario
    ADD CONSTRAINT fk_jkc_prop_email FOREIGN KEY ( id_proprietario )
        REFERENCES t_jkc_proprietario ( id_proprietario )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_empresa_prop
    ADD CONSTRAINT fk_jkc_prop_emp FOREIGN KEY ( id_proprietario )
        REFERENCES t_jkc_proprietario ( id_proprietario )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_prop_telefone
    ADD CONSTRAINT fk_jkc_prop_telef FOREIGN KEY ( id_proprietario )
        REFERENCES t_jkc_proprietario ( id_proprietario )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_emp_telef
    ADD CONSTRAINT fk_jkc_telef_empresa FOREIGN KEY ( id_telefone )
        REFERENCES t_jkc_telefone ( id_telefone )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_logradouro
    ADD CONSTRAINT fk_jkc_tipo_logr FOREIGN KEY ( id_tp_logradouro )
        REFERENCES t_jkc_tipo_logradouro ( id_tp_logradouro )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_telefone
    ADD CONSTRAINT fk_jkc_tipo_telef FOREIGN KEY ( id_tipo_fone )
        REFERENCES t_jkc_tipo_telefone ( id_tipo_fone )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE t_jkc_prop_telefone
    ADD CONSTRAINT fk_telef_prop FOREIGN KEY ( id_telefone )
        REFERENCES t_jkc_telefone ( id_telefone )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_modelo_maq
    ADD CONSTRAINT pk_jkc_fabr_modelo FOREIGN KEY ( id_fabricante )
        REFERENCES t_jkc_fabricante_maq ( id_fabricante )
    NOT DEFERRABLE;

ALTER TABLE t_jkc_empresa
    ADD CONSTRAINT pk_jkc_ramo_emp FOREIGN KEY ( id_ramo )
        REFERENCES t_jkc_ramo_atuacao ( id_ramo )
    NOT DEFERRABLE;

CREATE OR REPLACE TRIGGER trg_jkc_agenda_visita BEFORE
    INSERT ON t_jkc_agenda_visita
    FOR EACH ROW
    WHEN ( new.id_agenda_visita IS NULL )
BEGIN
    :new.id_agenda_visita := sq_agendamento.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_categ_maq BEFORE
    INSERT ON t_jkc_categoria_maquina
    FOR EACH ROW
    WHEN ( new.id_categoria IS NULL )
BEGIN
    :new.id_categoria := sq_cat_maquina.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_email BEFORE
    INSERT ON t_jkc_email
    FOR EACH ROW
    WHEN ( new.id_email IS NULL )
BEGIN
    :new.id_email := sq_email.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_emp_logr BEFORE
    INSERT ON t_jkc_emp_logr
    FOR EACH ROW
    WHEN ( new.id_logr_empresa IS NULL )
BEGIN
    :new.id_logr_empresa := sq_endereco.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_empresa BEFORE
    INSERT ON t_jkc_empresa
    FOR EACH ROW
    WHEN ( new.id_empresa IS NULL )
BEGIN
    :new.id_empresa := sq_empresa.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_equip_iot BEFORE
    INSERT ON t_jkc_equip_iot
    FOR EACH ROW
    WHEN ( new.id_equip_iot IS NULL )
BEGIN
    :new.id_equip_iot := sq_equip_iot.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_proprietario BEFORE
    INSERT ON t_jkc_proprietario
    FOR EACH ROW
    WHEN ( new.id_proprietario IS NULL )
BEGIN
    :new.id_proprietario := sq_proprietario.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_ramo_atuacao BEFORE
    INSERT ON t_jkc_ramo_atuacao
    FOR EACH ROW
    WHEN ( new.id_ramo IS NULL )
BEGIN
    :new.id_ramo := sq_ramo_atuacao.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_telefone BEFORE
    INSERT ON t_jkc_telefone
    FOR EACH ROW
    WHEN ( new.id_telefone IS NULL )
BEGIN
    :new.id_telefone := sq_nr_fone_completo.nextval;
END;
/

CREATE OR REPLACE TRIGGER trg_jkc_tipo_telef BEFORE
    INSERT ON t_jkc_tipo_telefone
    FOR EACH ROW
    WHEN ( new.id_tipo_fone IS NULL )
BEGIN
    :new.id_tipo_fone := sq_cod_tipo_fone.nextval;
END;
/



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            25
-- CREATE INDEX                             0
-- ALTER TABLE                             58
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                          10
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                         13
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
