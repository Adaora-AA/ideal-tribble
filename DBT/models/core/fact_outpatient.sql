{{
    config(
        materialized='table'
    )
}}

with outpatient_data as (
    select *
    from {{ ref('int_outpatient') }}
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
    clm_tot_chrg_amt,
    nch_bene_blood_ddctbl_lblty_am,
    nch_profnl_cmpnt_chrg_amt,
    prncpal_dgns_cd,  
    prncpal_dgns_code_desc,
    fst_dgns_e_cd,
    fst_dgns_e_code_desc,
    icd_prcdr_cd1,
    icd_prcdr_1_code_desc,
    prcdr_dt1,
    rsn_visit_cd1,
    rsn_visit_cd2,
    rsn_visit_cd3,
    nch_bene_ptb_ddctbl_amt,
    nch_bene_ptb_coinsrnc_amt,
    clm_op_prvdr_pmt_amt,
    clm_op_bene_pmt_amt,
    clm_line_num,
    rev_cntr,
    rev_cntr_dt,
    rev_cntr_1st_ansi_cd,
    rev_cntr_2nd_ansi_cd,
    rev_cntr_3rd_ansi_cd,
    rev_cntr_4th_ansi_cd,
    rev_cntr_apc_hipps_cd,
    hcpcs_cd,
    hcpcs_cd_desc,
    rev_cntr_pmt_mthd_ind_cd,
    rev_cntr_dscnt_ind_cd,
    rev_cntr_packg_ind_cd,
    rev_cntr_otaf_pmt_cd,
    rev_cntr_ide_ndc_upc_num,
    rev_cntr_unit_cnt,
    rev_cntr_rate_amt,
    rev_cntr_blood_ddctbl_amt,
    rev_cntr_cash_ddctbl_amt,
    rev_cntr_coinsrnc_wge_adjstd_c,
    rev_cntr_rdcd_coinsrnc_amt,
    rev_cntr_1st_msp_pd_amt,
    rev_cntr_2nd_msp_pd_amt,
    rev_cntr_prvdr_pmt_amt,
    rev_cntr_bene_pmt_amt,
    rev_cntr_ptnt_rspnsblty_pmt,
    rev_cntr_pmt_amt_amt,
    rev_cntr_tot_chrg_amt,
    rev_cntr_ncvrd_chrg_amt,
    rev_cntr_stus_ind_cd,
    rev_cntr_ndc_qty,
    rev_cntr_ndc_qty_qlfr_cd,
    rndrng_physn_upin,
    rndrng_physn_npi

from outpatient_data