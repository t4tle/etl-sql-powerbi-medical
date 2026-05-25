--
-- PostgreSQL database dump
--

\restrict DVbd7XsKNkBDESAcW0DcSdaBAwftlG0VEFBkKcWcXsfISgTdy5ZD4SUFzeYNA4a

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: clarity_eap; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clarity_eap (
    proc_id bigint NOT NULL,
    proc_name text,
    proc_code text,
    rpt_grp_ten double precision,
    is_active_yn text,
    panel_c double precision,
    proc_comment text,
    is_ec_inactive_yn text,
    ub_rev_code_id double precision,
    cost_cntr_id double precision,
    proc_group_id double precision,
    clm_proc_type_c double precision,
    billing_cat_c double precision,
    record_state_eap_c double precision,
    debit_or_credit_c double precision,
    type_c double precision,
    inst_of_edit_tm timestamp without time zone,
    is_proc_used double precision,
    short_name text,
    show_ord_detail_c double precision,
    order_display_name text,
    dflt_inter_id double precision,
    proc_cat_id double precision,
    ec_ovrd_proc_cat_id double precision,
    sched_for_outpat_yn text,
    prompt_for_vt_yn text,
    use_vt_spec_rest_c double precision,
    test_id double precision,
    bill_desc text,
    dx_req_yn text,
    ce_restr_sex_c double precision,
    future_proc_exp_dt text,
    outpat_dup_inter double precision
);


ALTER TABLE public.clarity_eap OWNER TO postgres;

--
-- Name: clarity_fc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clarity_fc (
    financial_class bigint NOT NULL,
    financial_class_name text,
    fin_class_title text,
    financial_class_abbr text,
    internal_id bigint
);


ALTER TABLE public.clarity_fc OWNER TO postgres;

--
-- Name: clarity_loc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clarity_loc (
    loc_id bigint NOT NULL,
    loc_name text,
    default_dept_id double precision,
    pos_type text,
    location_abbr text,
    gl_prefix double precision,
    rpt_grp_seven double precision,
    serv_area_id bigint,
    ben_bkt_opt_c double precision,
    id_type bigint,
    record_status double precision,
    dflt_preflst_lpf_id double precision,
    cc_dep_sel_ppt_id double precision,
    cc_assn_def_cc_id double precision,
    ed_sa_create_har_yn text,
    ed_sa_dflt_patcls_c double precision,
    conv_appt_to_hov_yn text,
    conv_appts_hov_id double precision,
    dflt_ed_hosp_area_c double precision,
    cs_date_range_limit double precision,
    newborn_unkn_ssn_c double precision,
    fax_num text,
    using_emr_yn text,
    cms_cert_num double precision,
    calc_cms_cert_num double precision,
    pos_code double precision,
    or_loc_type_c double precision,
    share_peridata_i_yn text,
    filt_imp_off_pck_yn text,
    filt_cdp_off_pck_yn text,
    case_cleanup_evnt_c double precision,
    cs_setup_end_evt_c double precision,
    proc_end_tim_evt_c double precision,
    inventory_loc_yn text,
    or_normal_start_tm timestamp without time zone,
    or_normal_end_tm timestamp without time zone,
    proc_length_event_c double precision,
    surg_start_event_c double precision,
    surg_end_event_c double precision,
    adt_location_type_c double precision,
    adt_parent_id double precision,
    daily_bcb_table_id double precision,
    hourly_bcb_table_id double precision,
    days_for_incomp_msg double precision,
    pos_type_c double precision,
    disp_cvg_fast_re_yn text,
    hosp_parent_loc_id double precision,
    facility_id bigint
);


ALTER TABLE public.clarity_loc OWNER TO postgres;

--
-- Name: hsp_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hsp_account (
    acct_basecls_ha_c bigint,
    acct_billed_date timestamp without time zone,
    acct_class_ha_c bigint,
    acct_close_date timestamp without time zone,
    acct_fin_class_c bigint,
    acct_notifictn_dt timestamp without time zone,
    acct_slfpyst_ha_c double precision,
    acct_billsts_ha_c bigint,
    acct_zero_bal_dt timestamp without time zone,
    assoc_authcert_id double precision,
    adm_date_time timestamp without time zone,
    bad_debt_agency_id double precision,
    claim_user_chng_yn text,
    completion_dt_tm timestamp without time zone,
    completn_sts_ha_c double precision,
    coverage_id double precision,
    cpt_cd_new_info_yn text,
    cvg_list_select_yn text,
    disch_date_time timestamp without time zone,
    disch_dept_id double precision,
    disch_destin_ha_c double precision,
    disch_loc_id bigint,
    final_drg_id double precision,
    frst_det_bill_date timestamp without time zone,
    frst_stmt_date timestamp without time zone,
    guar_country_c double precision,
    guar_county_c double precision,
    guar_dob timestamp without time zone,
    guar_state_c double precision,
    inst_of_update timestamp without time zone,
    is_active_yn text,
    is_copy_flag text,
    is_cr_bal_flag text,
    is_late_chg_flag text,
    last_det_bill_date timestamp without time zone,
    last_dmnd_stmt_dt timestamp without time zone,
    last_intrm_bill_dt timestamp without time zone,
    last_stmt_date timestamp without time zone,
    loc_id bigint,
    means_of_arrv_c double precision,
    next_stmt_date timestamp without time zone,
    num_of_det_bills double precision,
    num_of_dmnd_stmts double precision,
    num_of_stmts_sent double precision,
    pat_dob timestamp without time zone,
    pat_id bigint,
    pat_state_c double precision,
    prebill_bucket_id bigint,
    prim_svc_ha_c double precision,
    record_create_date timestamp without time zone,
    serv_area_id bigint,
    transfer_src_ha_c double precision,
    treatment_auth_num text,
    ub92_tob_override double precision,
    undistrb_bucket_id bigint,
    patient_status_c double precision,
    admission_type_c double precision,
    sign_on_file_c double precision,
    sign_on_file_date timestamp without time zone,
    extract_datetime timestamp without time zone,
    coding_status_c double precision,
    coding_datetime timestamp without time zone,
    last_int_cvg_id double precision,
    birth_weight double precision,
    dnb_date timestamp without time zone,
    prim_enc_csn_id double precision,
    bill_drg_amlos double precision,
    bill_drg_gmlos double precision,
    inv_num_seq_ctr double precision,
    hom_clarity_flg_yn text
);


ALTER TABLE public.hsp_account OWNER TO postgres;

--
-- Name: or_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.or_log (
    log_id bigint NOT NULL,
    log_name text,
    surgery_date timestamp without time zone,
    pat_id bigint,
    pat_type_c bigint,
    num_of_panels bigint,
    total_time_needed bigint,
    asa_rating_c double precision,
    room_id double precision,
    loc_id bigint,
    status_c bigint,
    service_c bigint,
    sched_start_time timestamp without time zone,
    touched_by_eod_yn text,
    case_request_id bigint,
    record_create_date timestamp without time zone,
    rec_create_user_id bigint,
    addenda_count double precision,
    log_accepted_yn text,
    proc_level_c double precision,
    or_time_evts_ent_c double precision,
    log_type_c bigint,
    case_id bigint,
    is_clinical_trl_yn text,
    sched_instr_edit_yn text,
    pat_instr_edited_yn text,
    nurse_notes_edit_yn text,
    position_notes_e_yn text,
    emerg_status_yn text,
    using_eap_yn text
);


ALTER TABLE public.or_log OWNER TO postgres;

--
-- Name: order_proc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_proc (
    order_proc_id bigint NOT NULL,
    pat_id bigint,
    pat_enc_csn_id bigint,
    result_lab_id bigint,
    ordering_date timestamp without time zone,
    order_type_c bigint,
    proc_id bigint,
    proc_code text,
    description text,
    order_class_c bigint,
    abnormal_yn text,
    lab_status_c bigint,
    order_status_c bigint,
    quantity bigint,
    rfl_num_vis double precision,
    cpt_code text,
    update_date timestamp without time zone,
    serv_area_id bigint,
    order_inst timestamp without time zone,
    display_name text,
    hv_hospitalist_yn text,
    order_priority_c bigint,
    chrg_dropped_time timestamp without time zone,
    instantiated_time timestamp without time zone,
    instntor_user_id double precision,
    specimen_type_c double precision,
    specimen_source_c double precision,
    order_time timestamp without time zone,
    result_time timestamp without time zone,
    review_time timestamp without time zone,
    is_pending_ord_yn text,
    proc_start_time timestamp without time zone,
    proc_ending_time timestamp without time zone,
    labcorp_bill_type_c double precision,
    no_chg_rsn_c double precision,
    rec_archived_yn text
);


ALTER TABLE public.order_proc OWNER TO postgres;

--
-- Name: order_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_results (
    order_proc_id bigint NOT NULL,
    line bigint NOT NULL,
    ord_date_real double precision NOT NULL,
    ord_end_date_real double precision,
    result_date timestamp without time zone,
    component_id bigint,
    pat_enc_csn_id bigint,
    ord_value text,
    ord_num_value bigint,
    result_flag_c double precision,
    result_status_c bigint,
    lab_status_c bigint,
    interface_yn text,
    serv_area_id bigint,
    result_time timestamp without time zone,
    resulting_lab_id bigint,
    ref_normal_vals text,
    data_type_c bigint,
    comp_obs_inst_tm timestamp without time zone,
    comp_anl_inst_tm timestamp without time zone,
    compon_lnc_id double precision,
    compon_lnc_src_c double precision,
    comp_snomed_src_c double precision,
    verify_user_id double precision
);


ALTER TABLE public.order_results OWNER TO postgres;

--
-- Name: pat_enc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pat_enc (
    pat_id bigint,
    pat_enc_csn_id bigint NOT NULL,
    contact_date timestamp without time zone,
    enc_type_c bigint,
    visit_prov_title double precision,
    department_id double precision,
    lmp_date timestamp without time zone,
    lmp_other_c double precision,
    head_circumference double precision,
    enc_closed_yn text,
    enc_closed_user_id double precision,
    enc_close_date timestamp without time zone,
    los_prime_proc_id double precision,
    los_proc_code double precision,
    los_modifier1_id double precision,
    appt_status_c double precision,
    appt_block_c double precision,
    appt_time timestamp without time zone,
    appt_length double precision,
    appt_made_date timestamp without time zone,
    appt_prc_id double precision,
    checkin_time timestamp without time zone,
    checkout_time timestamp without time zone,
    arvl_lst_dl_time timestamp without time zone,
    appt_cancel_date timestamp without time zone,
    cancel_reason_c double precision,
    hosp_admsn_time timestamp without time zone,
    hosp_dischrg_time timestamp without time zone,
    hosp_admsn_type_c double precision,
    noncvred_service_yn text,
    referral_req_yn text,
    referral_id double precision,
    primary_loc_id bigint,
    visit_fc bigint,
    update_date timestamp without time zone,
    serv_area_id bigint,
    adm_for_surg_yn text,
    surgical_svc_c double precision,
    contact_comment text,
    is_walk_in_yn text,
    referral_source_id double precision,
    sign_in_time timestamp without time zone,
    route_sum_prnt_yn text,
    phone_rem_stat_c double precision,
    appt_conf_stat_c double precision,
    appt_conf_pers text,
    appt_conf_inst timestamp without time zone,
    cancel_reason_cmt text,
    avs_print_tm timestamp without time zone,
    avs_first_user_id double precision,
    enc_med_frz_rsn_c double precision,
    effective_date_dt timestamp without time zone,
    discharge_date_dt timestamp without time zone,
    effective_dept_id bigint,
    enc_close_time timestamp without time zone,
    intrp_assignment_c double precision,
    ben_eng_sp_amt double precision,
    ben_adj_method_c double precision,
    entry_time timestamp without time zone,
    enc_instant timestamp without time zone,
    effective_date_dttm timestamp without time zone,
    calculated_enc_stat_c bigint
);


ALTER TABLE public.pat_enc OWNER TO postgres;

--
-- Name: pat_enc_hsp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pat_enc_hsp (
    pat_id bigint,
    pat_enc_csn_id bigint NOT NULL,
    adt_contact bigint,
    adt_initial double precision,
    adt_pat_class_c bigint,
    adt_patient_stat_c bigint,
    level_of_care_c double precision,
    adt_athcrt_stat_c double precision,
    exp_admission_time timestamp without time zone,
    exp_len_of_stay double precision,
    exp_discharge_date timestamp without time zone,
    admit_source_c bigint,
    type_of_room_c double precision,
    rsn_for_room_c double precision,
    type_of_bed_c double precision,
    rsn_for_bed_c double precision,
    delivery_type_c double precision,
    labor_status_c double precision,
    adt_arrival_time timestamp without time zone,
    adt_arrival_sts_c double precision,
    hosp_admsn_time timestamp without time zone,
    admit_conf_stat_c bigint,
    hosp_disch_time timestamp without time zone,
    disch_conf_stat_c double precision,
    hosp_admsn_type_c bigint,
    department_id bigint,
    adt_serv_area_id bigint,
    room_id double precision,
    bed_id double precision,
    hosp_serv_c double precision,
    means_of_depart_c double precision,
    disch_disp_c double precision,
    disch_dest_c double precision,
    transfer_from_c double precision,
    pat_contact_mpi_no double precision,
    means_of_arrv_c double precision,
    bill_num_type_c double precision,
    acuity_level_c double precision,
    pat_escorted_by_c double precision,
    accommodation_c double precision,
    accom_reason_c double precision,
    pvt_hsp_enc_c double precision,
    contact_date timestamp without time zone,
    ed_disposition_c double precision,
    ed_disp_time timestamp without time zone,
    ed_area_of_care_id double precision,
    inp_adm_date timestamp without time zone,
    ed_departure_time timestamp without time zone,
    eddisp_edit_inst timestamp without time zone,
    inp_adm_event_date timestamp without time zone,
    inp_dwngrd_date timestamp without time zone,
    inp_dwngrd_evnt_dt timestamp without time zone,
    op_adm_date timestamp without time zone,
    emer_adm_date timestamp without time zone,
    instant_of_entry_tm timestamp without time zone,
    exp_discharge_time timestamp without time zone,
    ed_fu_edit_user_id double precision,
    ed_fu_edit_inst timestamp without time zone,
    hospital_area_id bigint,
    mu_hosp_admsn_time timestamp without time zone
);


ALTER TABLE public.pat_enc_hsp OWNER TO postgres;

--
-- Name: pat_or_adm_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pat_or_adm_link (
    pat_enc_csn_id bigint NOT NULL,
    pat_id bigint,
    or_link_csn bigint,
    or_share_periop_yn text,
    or_caselog_id bigint,
    update_date timestamp without time zone,
    case_id bigint,
    log_id bigint,
    pxpass_id double precision
);


ALTER TABLE public.pat_or_adm_link OWNER TO postgres;

--
-- Name: patient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patient (
    pat_id bigint NOT NULL,
    pat_name text,
    birth_date timestamp without time zone,
    reg_date timestamp without time zone,
    reg_status_c double precision,
    epiccare_pat_yn text,
    ped_comment text,
    ped_mult_birth_ord double precision,
    ped_mult_birth_tot double precision,
    rec_create_date timestamp without time zone,
    create_user_id text,
    prim_cvg_id double precision,
    prim_epm_id double precision,
    prim_epp_id double precision,
    prim_fc bigint,
    pat_mrn_id bigint,
    update_date timestamp without time zone,
    tmp_addr_start_dt timestamp without time zone,
    tmp_addr_end_dt timestamp without time zone,
    tmp_care_of_person text,
    is_phone_remndr_yn text,
    alrgy_upd_date timestamp without time zone,
    pref_pcp_spec_c double precision,
    pref_pcp_lang_c double precision,
    ped_gest_age double precision,
    ped_delivr_meth_c double precision,
    ped_multi_birth_yn text,
    edd_dt timestamp without time zone,
    edd_entered_dt timestamp without time zone,
    edd_cmt text,
    intrptr_needed_yn text,
    ped_birth_labor text,
    self_verif_statu_yn text,
    self_ec_verif_date timestamp without time zone,
    self_ec_verif_st_yn text,
    last_myc_asked_date timestamp without time zone
);


ALTER TABLE public.patient OWNER TO postgres;

--
-- Name: res_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.res_components (
    result_id text NOT NULL,
    line double precision NOT NULL,
    component_id double precision,
    component_result text,
    component_value double precision,
    component_mthd_id double precision,
    component_inst timestamp without time zone,
    component_lab_id double precision,
    component_report_yn double precision,
    compon_rpt_set_by_c double precision,
    com_report_system_c double precision,
    com_rpt_field_c double precision,
    cmp_editing_user_id double precision,
    comp_verif_status_c double precision,
    comp_verif_dttm timestamp without time zone,
    comp_verif_lab_id double precision,
    comp_verif_user_id double precision,
    comp_value_num double precision,
    ovride_abnrml_yn text,
    ovride_rep_flag_yn text,
    comp_res_utc_dttm timestamp without time zone,
    cmp_verif_utc_dttm timestamp without time zone,
    comp_meth_set_by_c double precision
);


ALTER TABLE public.res_components OWNER TO postgres;

--
-- Name: spec_db_main; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spec_db_main (
    specimen_id bigint NOT NULL,
    spec_number_ln1 text,
    spec_dtm_collected timestamp without time zone,
    spec_dtm_received timestamp without time zone,
    spec_container_id double precision,
    spec_source_c bigint,
    spec_collect_by text,
    spec_ept_pat_id text,
    spec_val_stat_c bigint,
    spec_closed_dt timestamp without time zone,
    spec_coll_by_id double precision,
    spec_coll_dept_id double precision,
    case_id bigint,
    recv_queue_comm_id double precision,
    spec_coll_utc_dttm timestamp without time zone,
    spec_rcvd_utc_dttm timestamp without time zone,
    spec_frozen_yn text,
    specimen_col_id double precision,
    ap_receive_utc_dttm timestamp without time zone,
    ap_received_by_id double precision,
    recv_by_barcode_yn text,
    specimen_type_c double precision
);


ALTER TABLE public.spec_db_main OWNER TO postgres;

--
-- Name: v_case_volume; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.v_case_volume (
    log_id bigint NOT NULL,
    case_id bigint,
    pat_id bigint,
    pat_age bigint,
    patient_class_c bigint,
    patient_class_nm text,
    patient_class_group text,
    log_status_c bigint,
    log_status_nm text,
    add_on_case_sch_yn text,
    primary_physician_cred text,
    secondary_physician_cred text,
    service_c bigint,
    service_nm text,
    primary_procedure_id bigint,
    primary_procedure_nm text,
    primary_procedure_nm_wid text,
    location_id bigint,
    location_nm text,
    location_nm_wid text,
    room_id double precision,
    room_nm text,
    room_nm_wid text,
    first_anes_cred text,
    proc_date timestamp without time zone,
    proc_day_num_of_week bigint,
    proc_day_of_week text,
    proc_month_number bigint,
    proc_month_name text,
    proc_year bigint,
    proc_year_and_month bigint,
    proc_week_of_year bigint,
    proc_weekend_yn text,
    proc_holiday_yn text,
    number_of_procedures bigint,
    number_of_panels bigint,
    in_or_dttm timestamp without time zone,
    out_or_dttm timestamp without time zone,
    minutes_in_or double precision,
    count_in_or bigint,
    primary_preop_nurse_cred text,
    in_preop_dttm timestamp without time zone,
    out_preop_dttm timestamp without time zone,
    minutes_in_preop double precision,
    count_in_preop bigint,
    primary_recovery_nurse_id double precision,
    primary_recovery_nurse_nm text,
    primary_recovery_nurse_nm_wid text,
    primary_recovery_nurse_cred text,
    in_recovery_dttm timestamp without time zone,
    out_recovery_dttm timestamp without time zone,
    minutes_in_recovery double precision,
    count_in_recovery bigint,
    in_phaseii_dttm timestamp without time zone,
    count_in_phaseii bigint,
    resp_anes_cred text,
    primary_anes_type_c double precision,
    primary_anes_type_nm text,
    proc_level_c double precision,
    proc_level_nm text,
    recovery_level_c double precision,
    recovery_level_nm text,
    scheduled_in_or_dttm timestamp without time zone,
    scheduled_minutes_in_or double precision,
    scheduled_out_or_dttm timestamp without time zone,
    case_length_minutes_deviated double precision,
    case_length_percent_deviated double precision,
    case_length_over_under_c double precision,
    case_length_over_under_nm text,
    case_length_accurate_yn text
);


ALTER TABLE public.v_case_volume OWNER TO postgres;

--
-- Name: v_lab_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.v_lab_results (
    result_id text NOT NULL,
    result_type_id bigint,
    type_of_data_c bigint,
    resulting_lab_id bigint,
    resulting_lab_name text,
    test_id bigint NOT NULL,
    test_name text,
    test_line bigint NOT NULL,
    test_priority_c bigint,
    test_priority_name text,
    test_method_id bigint,
    specimen_id bigint NOT NULL,
    specimen_number text,
    ept_patient_id bigint,
    order_id bigint,
    proc_id bigint,
    proc_code text,
    proc_description text,
    pat_enc_csn_id bigint,
    encounter_department_id double precision,
    encounter_department_name text,
    ordering_department_id double precision,
    ordering_department_name text,
    ordered_datetime timestamp without time zone,
    collected_datetime timestamp without time zone,
    received_datetime timestamp without time zone,
    result_status_c bigint,
    result_status_name text,
    first_verified_datetime timestamp without time zone,
    last_verified_datetime timestamp without time zone,
    verified_datetime timestamp without time zone,
    actual_turnaround_time_min bigint,
    actual_turnaround_time_hour double precision,
    actual_turnaround_time_day double precision,
    abnormal_level_name text,
    reportable_yn text,
    submitter_name text,
    case_id bigint,
    case_type_id bigint,
    case_type_name text,
    case_type_nm_wid text,
    type_of_case_c bigint,
    type_of_case_name text,
    resulting_section_name text,
    verifying_lab_id bigint,
    verifying_lab_name text
);


ALTER TABLE public.v_lab_results OWNER TO postgres;

--
-- Name: zc_order_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zc_order_status (
    order_status_c bigint NOT NULL,
    name text,
    title text,
    abbr text,
    internal_id bigint
);


ALTER TABLE public.zc_order_status OWNER TO postgres;

--
-- Name: zc_spec_source; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zc_spec_source (
    spec_source_c bigint NOT NULL,
    name text,
    title text,
    abbr text,
    internal_id bigint
);


ALTER TABLE public.zc_spec_source OWNER TO postgres;

--
-- Name: clarity_eap clarity_eap_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clarity_eap
    ADD CONSTRAINT clarity_eap_pk PRIMARY KEY (proc_id);


--
-- Name: clarity_fc clarity_fc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clarity_fc
    ADD CONSTRAINT clarity_fc_pk PRIMARY KEY (financial_class);


--
-- Name: clarity_loc clarity_loc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clarity_loc
    ADD CONSTRAINT clarity_loc_pk PRIMARY KEY (loc_id);


--
-- Name: or_log or_log_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.or_log
    ADD CONSTRAINT or_log_pk PRIMARY KEY (log_id);


--
-- Name: order_proc order_proc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_proc
    ADD CONSTRAINT order_proc_pk PRIMARY KEY (order_proc_id);


--
-- Name: order_results order_results_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_results
    ADD CONSTRAINT order_results_pk PRIMARY KEY (order_proc_id, ord_date_real, line);


--
-- Name: pat_enc_hsp pat_enc_hsp_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_enc_hsp
    ADD CONSTRAINT pat_enc_hsp_pk PRIMARY KEY (pat_enc_csn_id);


--
-- Name: pat_enc pat_enc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_enc
    ADD CONSTRAINT pat_enc_pk PRIMARY KEY (pat_enc_csn_id);


--
-- Name: pat_or_adm_link pat_or_adm_link_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_or_adm_link
    ADD CONSTRAINT pat_or_adm_link_pk PRIMARY KEY (pat_enc_csn_id);


--
-- Name: patient patient_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pk PRIMARY KEY (pat_id);


--
-- Name: res_components res_components_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.res_components
    ADD CONSTRAINT res_components_pk PRIMARY KEY (result_id, line);


--
-- Name: spec_db_main spec_db_main_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spec_db_main
    ADD CONSTRAINT spec_db_main_pk PRIMARY KEY (specimen_id);


--
-- Name: v_case_volume v_case_volume_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_case_volume
    ADD CONSTRAINT v_case_volume_pk PRIMARY KEY (log_id);


--
-- Name: v_lab_results v_lab_results_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_lab_results
    ADD CONSTRAINT v_lab_results_pk PRIMARY KEY (result_id, test_id, test_line, specimen_id);


--
-- Name: zc_order_status zc_order_status_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zc_order_status
    ADD CONSTRAINT zc_order_status_pk PRIMARY KEY (order_status_c);


--
-- Name: zc_spec_source zc_spec_source_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zc_spec_source
    ADD CONSTRAINT zc_spec_source_pk PRIMARY KEY (spec_source_c);


--
-- Name: hsp_account fk_hsp_account_clarity_fc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hsp_account
    ADD CONSTRAINT fk_hsp_account_clarity_fc FOREIGN KEY (acct_fin_class_c) REFERENCES public.clarity_fc(financial_class);


--
-- Name: hsp_account fk_hsp_account_clarity_loc3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hsp_account
    ADD CONSTRAINT fk_hsp_account_clarity_loc3 FOREIGN KEY (serv_area_id) REFERENCES public.clarity_loc(loc_id);


--
-- Name: hsp_account fk_hsp_account_patient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hsp_account
    ADD CONSTRAINT fk_hsp_account_patient FOREIGN KEY (pat_id) REFERENCES public.patient(pat_id);


--
-- Name: or_log fk_or_log_clarity_loc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.or_log
    ADD CONSTRAINT fk_or_log_clarity_loc FOREIGN KEY (loc_id) REFERENCES public.clarity_loc(loc_id);


--
-- Name: or_log fk_or_log_patient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.or_log
    ADD CONSTRAINT fk_or_log_patient FOREIGN KEY (pat_id) REFERENCES public.patient(pat_id);


--
-- Name: or_log fk_or_log_v_case_volume; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.or_log
    ADD CONSTRAINT fk_or_log_v_case_volume FOREIGN KEY (log_id) REFERENCES public.v_case_volume(log_id);


--
-- Name: order_proc fk_order_proc_clarity_eap; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_proc
    ADD CONSTRAINT fk_order_proc_clarity_eap FOREIGN KEY (proc_id) REFERENCES public.clarity_eap(proc_id);


--
-- Name: order_proc fk_order_proc_clarity_loc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_proc
    ADD CONSTRAINT fk_order_proc_clarity_loc FOREIGN KEY (serv_area_id) REFERENCES public.clarity_loc(loc_id);


--
-- Name: order_proc fk_order_proc_pat_enc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_proc
    ADD CONSTRAINT fk_order_proc_pat_enc FOREIGN KEY (pat_enc_csn_id) REFERENCES public.pat_enc(pat_enc_csn_id);


--
-- Name: order_proc fk_order_proc_patient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_proc
    ADD CONSTRAINT fk_order_proc_patient FOREIGN KEY (pat_id) REFERENCES public.patient(pat_id);


--
-- Name: order_proc fk_order_proc_zc_order_status; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_proc
    ADD CONSTRAINT fk_order_proc_zc_order_status FOREIGN KEY (order_status_c) REFERENCES public.zc_order_status(order_status_c);


--
-- Name: order_results fk_order_results_clarity_loc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_results
    ADD CONSTRAINT fk_order_results_clarity_loc FOREIGN KEY (serv_area_id) REFERENCES public.clarity_loc(loc_id);


--
-- Name: order_results fk_order_results_order_proc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_results
    ADD CONSTRAINT fk_order_results_order_proc FOREIGN KEY (order_proc_id) REFERENCES public.order_proc(order_proc_id);


--
-- Name: order_results fk_order_results_pat_enc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_results
    ADD CONSTRAINT fk_order_results_pat_enc FOREIGN KEY (pat_enc_csn_id) REFERENCES public.pat_enc(pat_enc_csn_id);


--
-- Name: pat_enc fk_pat_enc_clarity_fc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_enc
    ADD CONSTRAINT fk_pat_enc_clarity_fc FOREIGN KEY (visit_fc) REFERENCES public.clarity_fc(financial_class);


--
-- Name: pat_enc fk_pat_enc_clarity_loc2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_enc
    ADD CONSTRAINT fk_pat_enc_clarity_loc2 FOREIGN KEY (serv_area_id) REFERENCES public.clarity_loc(loc_id);


--
-- Name: pat_enc_hsp fk_pat_enc_hsp_clarity_loc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_enc_hsp
    ADD CONSTRAINT fk_pat_enc_hsp_clarity_loc FOREIGN KEY (hospital_area_id) REFERENCES public.clarity_loc(loc_id);


--
-- Name: pat_enc_hsp fk_pat_enc_hsp_pat_enc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_enc_hsp
    ADD CONSTRAINT fk_pat_enc_hsp_pat_enc FOREIGN KEY (pat_enc_csn_id) REFERENCES public.pat_enc(pat_enc_csn_id);


--
-- Name: pat_enc_hsp fk_pat_enc_hsp_patient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_enc_hsp
    ADD CONSTRAINT fk_pat_enc_hsp_patient FOREIGN KEY (pat_id) REFERENCES public.patient(pat_id);


--
-- Name: pat_enc fk_pat_enc_patient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_enc
    ADD CONSTRAINT fk_pat_enc_patient FOREIGN KEY (pat_id) REFERENCES public.patient(pat_id);


--
-- Name: pat_or_adm_link fk_pat_or_adm_link_or_log; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_or_adm_link
    ADD CONSTRAINT fk_pat_or_adm_link_or_log FOREIGN KEY (log_id) REFERENCES public.or_log(log_id);


--
-- Name: pat_or_adm_link fk_pat_or_adm_link_patient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_or_adm_link
    ADD CONSTRAINT fk_pat_or_adm_link_patient FOREIGN KEY (pat_id) REFERENCES public.patient(pat_id);


--
-- Name: pat_or_adm_link fk_pat_or_adm_link_v_case_volume; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pat_or_adm_link
    ADD CONSTRAINT fk_pat_or_adm_link_v_case_volume FOREIGN KEY (log_id) REFERENCES public.v_case_volume(log_id);


--
-- Name: patient fk_patient_clarity_fc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT fk_patient_clarity_fc FOREIGN KEY (prim_fc) REFERENCES public.clarity_fc(financial_class);


--
-- Name: spec_db_main fk_spec_db_main_zc_spec_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spec_db_main
    ADD CONSTRAINT fk_spec_db_main_zc_spec_source FOREIGN KEY (spec_source_c) REFERENCES public.zc_spec_source(spec_source_c);


--
-- Name: v_case_volume fk_v_case_volume_clarity_loc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_case_volume
    ADD CONSTRAINT fk_v_case_volume_clarity_loc FOREIGN KEY (location_id) REFERENCES public.clarity_loc(loc_id);


--
-- Name: v_case_volume fk_v_case_volume_or_log; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_case_volume
    ADD CONSTRAINT fk_v_case_volume_or_log FOREIGN KEY (log_id) REFERENCES public.or_log(log_id);


--
-- Name: v_case_volume fk_v_case_volume_patient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_case_volume
    ADD CONSTRAINT fk_v_case_volume_patient FOREIGN KEY (pat_id) REFERENCES public.patient(pat_id);


--
-- Name: v_lab_results fk_v_lab_results_patient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_lab_results
    ADD CONSTRAINT fk_v_lab_results_patient FOREIGN KEY (ept_patient_id) REFERENCES public.patient(pat_id);


--
-- PostgreSQL database dump complete
--

\unrestrict DVbd7XsKNkBDESAcW0DcSdaBAwftlG0VEFBkKcWcXsfISgTdy5ZD4SUFzeYNA4a

