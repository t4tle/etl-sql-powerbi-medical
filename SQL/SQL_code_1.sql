select * from clarity_fc
select * from clarity_eap
select * from clarity_loc
select * from hsp_account
select * from or_log
select * from order_proc
select * from order_results
select * from pat_enc
select * from pat_enc_hsp
select * from pat_or_adm_link
select * from patient
select * from res_components
select * from spec_db_main
select * from v_case_volume
select * from v_lab_results
select * from zc_order_status
select * from zc_spec_source

ALTER TABLE clarity_fc
ADD CONSTRAINT clarity_fc_pk PRIMARY KEY ("FINANCIAL_CLASS");
ALTER TABLE clarity_eap
ADD CONSTRAINT clarity_eap_pk PRIMARY KEY ("PROC_ID");
ALTER TABLE clarity_loc
ADD CONSTRAINT clarity_loc_pk PRIMARY KEY ("LOC_ID");
-- ALTER TABLE hsp_account ADD CONSTRAINT hsp_account_pk PRIMARY KEY ("HSP_ACCOUNT_ID");
ALTER TABLE or_log
ADD CONSTRAINT or_log_pk PRIMARY KEY (LOG_ID);
ALTER TABLE order_proc
ADD CONSTRAINT order_proc_pk PRIMARY KEY ("ORDER_PROC_ID");
ALTER TABLE order_results
ADD CONSTRAINT order_results_pk PRIMARY KEY ("ORDER_PROC_ID");
ALTER TABLE pat_enc
ADD CONSTRAINT pat_enc_pk PRIMARY KEY ("PAT_ENC_CSN_ID");
ALTER TABLE pat_enc_hsp
ADD CONSTRAINT pat_enc_hsp_pk PRIMARY KEY ("PAT_ENC_CSN_ID");
ALTER TABLE pat_or_adm_link
ADD CONSTRAINT pat_or_adm_link_pk PRIMARY KEY ("PAT_ENC_CSN_ID");
ALTER TABLE patient
ADD CONSTRAINT patient_pk PRIMARY KEY ("PAT_ID");
ALTER TABLE res_components
ADD CONSTRAINT res_components_pk PRIMARY KEY ("RESULT_ID","LINE");
ALTER TABLE spec_db_main
ADD CONSTRAINT spec_db_main_pk PRIMARY KEY ("SPECIMEN_ID");
ALTER TABLE v_case_volume
ADD CONSTRAINT v_case_volume_pk PRIMARY KEY ("LOG_ID");
ALTER TABLE v_lab_results
ADD CONSTRAINT v_lab_results_pk PRIMARY KEY ("RESULT_ID","TEST_ID","TEST_LINE","SPECIMEN_ID"
);
ALTER TABLE zc_order_status
ADD CONSTRAINT zc_order_status_pk PRIMARY KEY ("ORDER_STATUS_C");
ALTER TABLE zc_spec_source
ADD CONSTRAINT zc_spec_source_pk PRIMARY KEY ("SPEC_SOURCE_C");


SELECT
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'or_log';