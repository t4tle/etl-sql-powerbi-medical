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


select pat_name as "Patient Name", PAT_MRN_ID as "MRN",ORDERING_DATE, ZC_ORDER_STATUS.title as "order status", ord_value as "Results", Result_date, AGE(Result_date,birth_date) as "age"
,SPECIMEN_NUMBER, ZC_SPEC_SOURCE.name as "Specimen source", COMPONENT_RESULT AS "Biopsy result"
from order_proc left join Patient
on Patient.pat_id = order_proc.pat_id
left join ZC_ORDER_STATUS
on order_proc.ORDER_STATUS_C = ZC_ORDER_STATUS.ORDER_STATUS_C
left join order_results
on ORDER_PROC.ORDER_PROC_ID = order_results.ORDER_PROC_ID 
left join v_lab_results
on v_lab_results.EPT_PATIENT_ID  = Patient.pat_id
left join spec_db_main
on spec_db_main.SPEC_NUMBER_LN1 = v_lab_results.SPECIMEN_NUMBER
left join ZC_SPEC_SOURCE
on spec_db_main.SPEC_SOURCE_C = ZC_SPEC_SOURCE.SPEC_SOURCE_C
left JOIN res_components
ON res_components.RESULT_ID = v_lab_results.RESULT_ID
where ord_value = 'Positive'
ORDER BY  "Specimen source" NULLS LAST, "Biopsy result" NULLS LAST, SPECIMEN_NUMBER NULLS LAST








