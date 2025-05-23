{{
    config(
        materialized='table'
    )
}}

with inpatient_data as (
    select *
    from {{ ref('int_inpatient') }}
)
select
    bene_id,
    clm_id,
    nch_near_line_rec_ident_cd,
    nch_clm_type_cd,
    claim_type_desc,
    clm_from_dt,
    clm_thru_dt,
    nch_wkly_proc_dt,
    fi_clm_proc_dt,
    claim_query_code,
    prvdr_num,
    clm_fac_type_cd,
    facility_type,
    clm_srvc_clsfctn_type_cd,
    claim_service_type,
    clm_freq_cd,
    fi_num,
    clm_mdcr_non_pmt_rsn_cd,
    clm_pmt_amt,
    nch_prmry_pyr_clm_pd_amt,
    nch_prmry_pyr_cd,
    fi_clm_actn_cd,
    prvdr_state_cd,
    prvdr_state,
    org_npi_num,
    at_physn_upin,
    at_physn_npi,
    op_physn_upin,
    op_physn_npi,
    ot_physn_upin,
    ot_physn_npi,
    clm_mco_pd_sw, 
    ptnt_dschrg_stus_cd,
    patient_discharge_status,
    clm_pps_ind_cd,
    clm_tot_chrg_amt,
    clm_admsn_dt,
    clm_ip_admsn_type_cd,
    clm_src_ip_admsn_cd,
    nch_ptnt_status_ind_cd,
    patient_discharge_ind,
    clm_pass_thru_per_diem_amt,
    nch_bene_ip_ddctbl_amt,
    nch_bene_pta_coinsrnc_lblty_am,
    nch_bene_blood_ddctbl_lblty_am,
    nch_profnl_cmpnt_chrg_amt,
    nch_ip_ncvrd_chrg_amt,
    nch_ip_tot_ddctn_amt,
    clm_tot_pps_cptl_amt,
    clm_pps_cptl_fsp_amt,
    clm_pps_cptl_outlier_amt,
    clm_pps_cptl_dsprprtnt_shr_amt,
    clm_pps_cptl_ime_amt,
    clm_pps_cptl_excptn_amt,
    clm_pps_old_cptl_hld_hrmls_amt,
    clm_pps_cptl_drg_wt_num,
    clm_utlztn_day_cnt,
    bene_tot_coinsrnc_days_cnt,
    bene_lrd_used_cnt,
    clm_non_utlztn_days_cnt,
    nch_blood_pnts_frnshd_qty,
    nch_vrfd_ncvrd_stay_from_dt,
    nch_vrfd_ncvrd_stay_thru_dt,
    nch_actv_or_cvrd_lvl_care_thru,
    nch_bene_mdcr_bnfts_exhtd_dt_i,
    nch_bene_dschrg_dt,
    clm_drg_cd,
    clm_drg_outlier_stay_cd,
    nch_drg_outlier_aprvd_pmt_amt,
    admtg_dgns_cd,
    admtg_dgns_code_desc,
    prncpal_dgns_cd,  
    prncpal_dgns_code_desc,
    fst_dgns_e_cd,
    fst_dgns_e_code_desc,
    icd_prcdr_cd1,
    icd_prcdr_1_code_desc,
    prcdr_dt1,
    ime_op_clm_val_amt,
    dsh_op_clm_val_amt,
    clm_uncompd_care_pmt_amt,
    clm_line_num,
    rev_cntr,
    hcpcs_cd,
    hcpcs_cd_desc,
    rev_cntr_ddctbl_coinsrnc_cd

from inpatient_data