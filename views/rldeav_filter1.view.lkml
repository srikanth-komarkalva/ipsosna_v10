view: rldeav_filter1 {
  label: "EAV Filter view 1"
  derived_table: {
    sql: SELECT distinct metricID,metricCode,metricLabel,metricOrder,responseCode,responseLabel,responseOrder,
          demoCode,cast('2000-01-01' as date) from `mgcp-1192365-ipsos-gbht-srf617.GPay_Dataset.tblOutputDatasheet`
       ;;
  }

  dimension: demo_code {
    group_label: "Filter Dimensions set 1"
    label: "Demo Code 1"
    hidden: yes
    type: string
    sql: ${TABLE}.demoCode ;;
  }

  # dimension: brand_label {
  #   label: "Brand 1"
  #   group_label: "Filter Dimensions set 1"
  #   type: string
  #   order_by_field: brand_order
  #   sql: ${TABLE}.brandLabel ;;
  # }

  # dimension: brand_order {
  #   group_label: "Filter Dimensions set 1"
  #   hidden: yes
  #   type: number
  #   sql: ${TABLE}.brandOrder ;;
  # }

  dimension: metric_id {
    group_label: "Filter Dimensions set 1"
    hidden: yes
    type: number
    sql: ${TABLE}.metricID ;;
  }

  dimension: metric_code {
    group_label: "Filter Dimensions set 1"
    type: string
    label: "Metric Code 1"
    order_by_field: metric_order
    sql: ${TABLE}.metricCode ;;
  }

  dimension: metric_label {
    label: "Metric Label 1"
    group_label: "Filter Dimensions set 1"
    type: string
    sql: ${TABLE}.metricLabel ;;
  }

  dimension: metric_order {
    group_label: "Filter Dimensions set 1"
    type: number
    hidden: yes
    sql: ${TABLE}.metricOrder ;;
  }

  dimension: response_code {
    label: "Response Code 1"
    type: string
    group_label: "Filter Dimensions set 1"
    sql: ${TABLE}.responseCode ;;
  }

  dimension: response_label {
    label: "Response Label 1"
    group_label: "Filter Dimensions set 1"
    type: string
    order_by_field: response_order
    sql: ${TABLE}.responseLabel ;;
  }

  dimension: response_order {
    group_label: "Filter Dimensions set 1"
    hidden: yes
    type: number
    sql: ${TABLE}.responseOrder ;;
  }

  dimension: f0_ {
    type: date
    hidden: yes
    datatype: date
    sql: ${TABLE}.f0_ ;;
  }
}
