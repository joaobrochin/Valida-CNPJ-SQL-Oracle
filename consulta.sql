SELECT
    prop.id_proprietario,
    prop.nm_proprietario,
    prop.nm_apelido,
    prop.dt_nasc,
    prop.st_genero_biologico,
    empprop.dt_inicio,
    empprop.dt_termino,
    tel.id_tipo_fone,
    tel.nr_ddi,
    tel.nr_ddd,
    tel.nr_telefone,
    tel.st_status,
    tipotel.ds_tipo_fone,
    emptel.dt_inicio,
    ramo.nm_ramo,
    email.ds_email,
    email.id_email,
    emp.id_empresa,
    emp.id_ramo,
    emp.nr_cnpj,
    emp.ds_razao_social,
    emp.nm_fantasia,
    emp.dt_fundacao,
    emp.ds_origem_cont,
    emp.st_prospeccao_cliente,
    emplog.dt_inicio,
    emplog.nr_endereco,
    emplog.ds_complemento,
    emplog.ds_ponto_referencia,
    logi.cd_tp_logradouro,
    logi.ds_logradouro,
    logi.nr_cep,
    tiplog.nm_tipo_logradouro,
    bai.nm_bairro,
    cid.nm_cidade,
    est.nm_estado,
    est.sg_estado,
    pais.cd_internacional_pais,
    pais.nm_pais,
    maqind.nm_maquina,
    maqind.nm_pais_origem,
    maqind.dt_fabricacao,
    maqind.st_status,
    maqind.ds_voltagem,
    maqind.nr_num_serie,
    maqind.nr_planta_fisica_maq,
    maqind.cd_equip_iot,
    maqind.dt_inicio,
    modmaq.ds_modelo_maquina,
    fabmaq.nm_fabricante,
    catmaq.tp_categoria_maquina,
    catmaq.nm_categoria,
    catmaq.ds_completa_categoria_maq,
    maqiot.id_maq_industrial,
    maqiot.id_equip_iot,
    maqiot.dt_inicio,
    maqiot.st_iot_maq,
    eqiot.nr_serie,
    eqiot.nm_fornecedor,
    eqiot.st_equip_iot,
    agen.tp_visita,
    agen.dt_agenda,
    agen.ds_resumida_visita,
    agen.ds_laudo_visita,
    agen.vl_desconto,
    agen.dt_inicio_visita,
    agen.dt_termino_visita,
    agen.qt_horas_visita,
    agen.st_visita,
    emptel.id_telefone
FROM
    t_jkc_empresa            emp
    LEFT JOIN t_jkc_emp_email          empe ON ( emp.id_empresa = empe.id_empresa )
    LEFT JOIN t_jkc_email              email ON ( email.id_email = empe.id_email )
    LEFT JOIN t_jkc_email_proprietario emapro ON ( email.id_email = emapro.id_email )
    LEFT JOIN t_jkc_ramo_atuacao       ramo ON ( ramo.id_ramo = emp.id_ramo )
    LEFT JOIN t_jkc_emp_telef          emptel ON ( emp.id_empresa = emptel.id_empresa )
    LEFT JOIN t_jkc_telefone           tel ON ( tel.id_telefone = emptel.id_telefone )
    LEFT JOIN t_jkc_tipo_telefone      tipotel ON ( tipotel.id_tipo_fone = tel.id_tipo_fone )
    LEFT JOIN t_jkc_prop_telefone      proptel ON ( tel.id_telefone = proptel.id_telefone )
    LEFT JOIN t_jkc_empresa_prop       empprop ON ( emp.id_empresa = empprop.id_empresa )
    LEFT JOIN t_jkc_proprietario       prop ON ( prop.id_proprietario = empprop.id_proprietario )
    LEFT JOIN t_jkc_proprietario       prop ON ( prop.id_proprietario = emapro.id_proprietario )
    LEFT JOIN t_jkc_proprietario       prop ON ( prop.id_proprietario = proptel.id_proprietario )
    LEFT JOIN t_jkc_emp_logr           emplog ON ( emp.id_empresa = emplog.id_empresa )
    LEFT JOIN t_jkc_logradouro         logi ON ( logi.id_logradouro = emplog.id_logradouro )
    LEFT JOIN t_jkc_tipo_logradouro    tiplog ON ( tiplog.id_tp_logradouro = logi.id_tp_logradouro )
    LEFT JOIN t_jkc_bairro             bai ON ( bai.id_bairro = logi.id_bairro )
    LEFT JOIN t_jkc_cidade             cid ON ( cid.id_cidade = bai.id_cidade )
    LEFT JOIN t_jkc_estado             est ON ( est.id_estado = cid.id_estado )
    LEFT JOIN t_jkc_pais               pais ON ( pais.id_pais = est.id_pais )
    LEFT JOIN t_jkc_agenda_visita      agen ON ( agen.id_agenda_visita = emplog.id_logr_empresa )
    LEFT JOIN t_jkc_emp_maq_industrial maqind ON ( maqind.id_maq_industrial = emp.id_empresa )
    LEFT JOIN t_jkc_categoria_maquina  catmaq ON ( catmaq.id_categoria = maqind.id_categoria )
    LEFT JOIN t_jkc_maq_iot            maqiot ON ( maqiot.id_maq_iot = maqind.id_maq_industrial )
    LEFT JOIN t_jkc_equip_iot          eqiot ON ( eqiot.id_equip_iot = maqiot.id_equip_iot )
    LEFT JOIN t_jkc_modelo_maq         modmaq ON ( modmaq.id_modelo_maquina = maqind.id_modelo_maquina )
    LEFT JOIN t_jkc_fabricante_maq     fabmaq ON ( fabmaq.id_fabricante = modmaq.id_fabricante )