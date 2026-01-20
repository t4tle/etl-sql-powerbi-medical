errors when cleaning data
- empty rows
- One forign table connection was ommitted for res_copoments 
- ORD_VALUE in order_results is broken needs to be checked


ERROR:  insert or update on table "order_proc" violates foreign key constraint "fk_order_proc_pat_or_adm_link"
Key (pat_enc_csn_id)=(7114882909) is not present in table "pat_or_adm_link". 

ERROR:  insert or update on table "order_proc" violates foreign key constraint "fk_order_proc_pat_enc_hsp"
Key (pat_enc_csn_id)=(7135389262) is not present in table "pat_enc_hsp".

ERROR:  insert or update on table "pat_enc" violates foreign key constraint "fk_pat_enc_pat_enc_hsp"
Key (pat_enc_csn_id)=(7109890684) is not present in table "pat_enc_hsp".

ERROR:  insert or update on table "pat_enc" violates foreign key constraint "fk_pat_enc_pat_or_adm_link"
Key (pat_enc_csn_id)=(7109315333) is not present in table "pat_or_adm_link". 

ERROR:  insert or update on table "pat_enc" violates foreign key constraint "fk_pat_enc_clarity_loc"
Key (primary_loc_id)=(10700) is not present in table "clarity_loc". 

ERROR:  insert or update on table "hsp_account" violates foreign key constraint "fk_hsp_account_clarity_loc"
Key (disch_loc_id)=(10900) is not present in table "clarity_loc". 

ERROR:  insert or update on table "hsp_account" violates foreign key constraint "fk_hsp_account_clarity_loc2"
Key (loc_id)=(30300) is not present in table "clarity_loc".

ERROR:  insert or update on table "pat_or_adm_link" violates foreign key constraint "fk_pat_or_adm_link_pat_enc"
Key (pat_enc_csn_id)=(7110186889) is not present in table "pat_enc". 

ERROR:  insert or update on table "pat_or_adm_link" violates foreign key constraint "fk_pat_or_adm_link_pat_enc"
Key (or_link_csn)=(7110186896) is not present in table "pat_enc".

ERROR:  insert or update on table "pat_or_adm_link" violates foreign key constraint "fk_pat_or_adm_link_pat_enc_hsp"
Key (pat_enc_csn_id)=(7110186889) is not present in table "pat_enc_hsp". 

ERROR:  insert or update on table "pat_or_adm_link" violates foreign key constraint "fk_pat_or_adm_link_pat_enc_hsp2"
Key (or_link_csn)=(7110186896) is not present in table "pat_enc_hsp". 

ERROR:  insert or update on table "v_lab_results" violates foreign key constraint "fk_v_lab_results_order_proc"
Key (order_id)=(119810161) is not present in table "order_proc". 

ERROR:  insert or update on table "v_lab_results" violates foreign key constraint "fk_v_lab_results_clarity_eap"
Key (proc_id)=(75636) is not present in table "clarity_eap". 

ERROR:  insert or update on table "v_lab_results" violates foreign key constraint "fk_v_lab_results_pat_enc"
Key (pat_enc_csn_id)=(7162455357) is not present in table "pat_enc". 

ERROR:  insert or update on table "v_lab_results" violates foreign key constraint "fk_v_lab_results_pat_enc_hsp"
Key (pat_enc_csn_id)=(7162455357) is not present in table "pat_enc_hsp".

ERROR:  insert or update on table "v_lab_results" violates foreign key constraint "fk_v_lab_results_pat_or_adm_link"
Key (pat_enc_csn_id)=(7162455357) is not present in table "pat_or_adm_link".

ADD CONSTRAINT FK_spec_db_main_PATIENT
FOREIGN KEY (SPEC_EPT_PAT_ID) REFERENCES PATIENT(PAT_ID); 
type inconsistency in cells

ERROR:  insert or update on table "order_results" violates foreign key constraint "fk_order_results_pat_enc_hsp"
Key (pat_enc_csn_id)=(7170121631) is not present in table "pat_enc_hsp". 

ERROR:  insert or update on table "order_results" violates foreign key constraint "fk_order_results_pat_or_adm_link"
Key (pat_enc_csn_id)=(7170121631) is not present in table "pat_or_adm_link". 