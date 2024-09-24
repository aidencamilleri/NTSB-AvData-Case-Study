use ntsb;

-- Dropping empty/useless columns

alter table events
drop column faa_dist_office,
drop column lchg_userid,
drop column lchg_date,
drop column fiche_number,
drop column ntsb_notf_tm,
drop column ntsb_notf_date,
drop column ntsb_notf_from,
drop column ntsb_docket,
drop column wx_int_precip,
drop column wx_dens_alt,
drop column vis_rvv;

alter table aircraft
drop column acft_reg_cls,
drop column oper_same,
drop column oper_addr_same,
drop column oprtng_cert,
drop column oper_cert,
drop column oper_cert_num,
drop column dprt_timezn,
drop column dest_same_local,
drop column phase_flt_spec,
drop column report_to_icao,
drop column evacuation,
drop column lchg_date,
drop column lchg_userid,
drop column commercial_space_flight,
drop column unmanned,
drop column ifr_equipped_cert,
drop column elt_mounted_aircraft,
drop column elt_connected_antenna,
drop column elt_manufacturer,
drop column elt_model,
drop column elt_reason_other;

