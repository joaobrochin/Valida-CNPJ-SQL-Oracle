CREATE OR REPLACE TRIGGER tr_t_JKC_cli_juridico  
BEFORE INSERT OR UPDATE ON T_JKC_EMPRESA 

FOR EACH ROW 
BEGIN 

    CASE
    WHEN INSERTING THEN
        IF  FN_VALIDA_CNPJ(:new.NR_CNPJ)='VALIDO' then dbms_output.put_line('Inserindo registro de CNPJ: '||:New.NR_CNPJ);
        ELSIF FN_VALIDA_CNPJ(:new.NR_CNPJ)= 'INVALIDO' then RAISE_APPLICATION_ERROR(-20001,'CNPJ INVALIDO') ;     
        ELSE RAISE_APPLICATION_ERROR(-20002,'ERRO DESCONHECIDO');
        END IF;
    WHEN UPDATING THEN
        IF  FN_VALIDA_CNPJ(:new.NR_CNPJ)='VALIDO' then dbms_output.put_line('Atualizando registro de CNPJ: '||:New.NR_CNPJ);
        ELSIF FN_VALIDA_CNPJ(:new.NR_CNPJ)= 'INVALIDO' then RAISE_APPLICATION_ERROR(-20001,'CNPJ INVALIDO') ;     
        ELSE RAISE_APPLICATION_ERROR(-20002,'ERRO DESCONHECIDO');
        END IF;
    END CASE;
END; 
/



INSERT ALL
INTO T_JKC_EMPRESA (ID_EMPRESA,ID_RAMO,NR_CNPJ, DS_RAZAO_SOCIAL,NM_FANTASIA,DT_FUNDACAO,DS_ORIGEM_CONTST_PROSPECCAO_CLIENTE) VALUES (1,1,48121883000114,'HDHDHDH','Feminino',TO_DATE('15/09/2000','DD/MM/YYYY'),'KJSLJDLKS','A')
SELECT * FROM DUAL;


SELECT * FROM T_JKC_EMPRESA