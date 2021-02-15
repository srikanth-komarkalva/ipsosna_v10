connection: "gpay"

# include all the views
include: "/views/**/*.view"

datagroup: ipsosna_v10_default_datagroup {
  sql_trigger: SELECT TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(),hour) ;;
  max_cache_age: "24 hours"
}

persist_with: ipsosna_v10_default_datagroup

explore: tbl_output_datasheet {
  label: "Google Pay Explore"
  view_label: "Google Pay Explore"

  # join: rldeav_filter1 {
  #   view_label: "Google Pay Explore"
  #   relationship: one_to_one
  #   type: inner
  #   sql_on: ${rldeav_filter1.demo_code} = ${tbl_output_datasheet.demo_code} AND
  #           ${rldeav_filter1.time_period_label} = ${tbl_output_datasheet.time_period_label};;
  # }
  }
