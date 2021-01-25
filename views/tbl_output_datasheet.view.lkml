view: tbl_output_datasheet {
  sql_table_name: `mgcp-1192365-ipsos-gbht-srf617.GPay_Dataset.tblOutputDatasheet`
    ;;

  dimension: base_label {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.baseLabel ;;
  }

  dimension: brand_code {
    group_label: "Question Information"
    label: "Brand Code"
    type: string
    sql: ${TABLE}.brandCode ;;
  }

  dimension: brand_color_hex_code {
    type: string
    hidden: yes
    sql: ${TABLE}.brandColorHexCode ;;
  }

  dimension: brand_label {
    label: "Brand"
    group_label: "Question Information"
    type: string
    order_by_field: brand_order
    sql: ${TABLE}.brandLabel ;;
  }

  dimension: brand_order {
    group_label: "Question Information"
    hidden: yes
    type: number
    sql: ${TABLE}.brandOrder ;;
  }

  dimension: country_code {
    group_label: "Demographic Fields"
    hidden: yes
    type: string
    sql: ${TABLE}.countryCode ;;
  }

  dimension: country_label {
    label: "Country"
    group_label: "Demographic Fields"
    type: string
    order_by_field: country_order
    sql: ${TABLE}.countryLabel ;;
  }

  dimension: country_order {
    group_label: "Demographic Fields"
    type: number
    hidden: yes
    sql: ${TABLE}.countryOrder ;;
  }

  dimension: demo_code {
    group_label: "Demographic Fields"
    type: string
    order_by_field: demo_order
    sql: ${TABLE}.demoCode ;;
  }

  dimension: demo_color_hex_code {
    hidden: yes
    type: string
    sql: ${TABLE}.demoColorHexCode ;;
  }

  dimension: demo_label {
    group_label: "Demographic Fields"
    type: string
    order_by_field: demo_order
    sql: ${TABLE}.demoLabel ;;
  }

  dimension: demo_order {
    group_label: "Demographic Fields"
    hidden: yes
    type: number
    sql: ${TABLE}.demoOrder ;;
  }

  dimension: is_metric_net {
    group_label: "Question Information"
    type: number
    sql: ${TABLE}.isMetricNet ;;
  }

  dimension: metric_code {
    label: "Question Metric"
    group_label: "Question Information"
    order_by_field: metric_order
    type: string
    sql: ${TABLE}.metricCode ;;
  }

  dimension: metric_code_segment {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.metricCodeSegment ;;
  }

  dimension: metric_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.metricID ;;
  }

  dimension: metric_label {
    group_label: "Question Information"
    type: string
    order_by_field: metric_order
    sql: ${TABLE}.metricLabel ;;
  }

  dimension: metric_label_segment {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.metricLabelSegment ;;
  }

  dimension: metric_order {
    type: number
    hidden: yes
    sql: ${TABLE}.metricOrder ;;
  }

  dimension: os_brand_code {
    group_label: "Question Information"
    hidden: yes
    type: string
    sql: ${TABLE}.osBrandCode ;;
  }

  dimension: os_demo_code {
    group_label: "Question Information"
    hidden: yes
    type: string
    sql: ${TABLE}.osDemoCode ;;
  }

  dimension: project_name {
    hidden: yes
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.projectName ;;
  }

  dimension: rank_brand {
    type: number
    group_label: "Rank fields"
    sql: ${TABLE}.rankBrand ;;
  }

  dimension: rank_brand_label {
    type: string
    group_label: "Rank fields"
    sql: ${TABLE}.rankBrandLabel ;;
  }

  measure: rank_brand_score {
    type: sum
    value_format_name: decimal_1
    group_label: "Rank fields"
    sql: ${TABLE}.rankBrandScore ;;
  }

  dimension: rank_demo {
    type: number
    group_label: "Rank fields"
    sql: ${TABLE}.rankDemo ;;
  }

  dimension: rank_demo_label {
    type: string
    group_label: "Rank fields"
    sql: ${TABLE}.rankDemoLabel ;;
  }

  measure: rank_demo_score {
    group_label: "Rank fields"
    type: sum
    value_format_name: decimal_1
    sql: ${TABLE}.rankDemoScore ;;
  }

  dimension: response_code {
    type: string
    group_label: "Question Information"
    hidden: yes
    sql: ${TABLE}.responseCode ;;
  }

  dimension: response_label {
    type: string
    label: "Response Label"
    group_label: "Question Information"
    order_by_field: response_order
    sql: ${TABLE}.responseLabel ;;
  }

  dimension: response_order {
    group_label: "Question Information"
    hidden: yes
    type: number
    sql: ${TABLE}.responseOrder ;;
  }

  dimension: row_type {
    hidden: yes
    type: string
    sql: ${TABLE}.rowType ;;
  }

  dimension: sig_test_by_banner_type {
    group_label: "Sig Test Attributes"
    type: string
    sql: ${TABLE}.sigTestByBannerType ;;
  }

  dimension: sig_test_osdemo_codes {
    group_label: "Sig Test Attributes"
    type: string
    sql: ${TABLE}.sigTestOSDemoCodes ;;
  }

  dimension: sig_test_wow {
    group_label: "Sig Test Attributes"
    type: number
    sql: ${TABLE}.sigTestWOW ;;
  }

  dimension: sig_test_yoy {
    group_label: "Sig Test Attributes"
    type: number
    sql: ${TABLE}.sigTestYOY ;;
  }

  dimension: change_wow {
    group_label: "Sig Test Attributes"
    type: number
    sql: ${TABLE}.changeWOW ;;
  }

  dimension: change_yoy {
    group_label: "Sig Test Attributes"
    type: number
    sql: ${TABLE}.changeYOY ;;
  }

  dimension: sig_testos_brand_codes {
    group_label: "Sig Test Attributes"
    type: string
    sql: ${TABLE}.sigTestosBrandCodes ;;
  }

  dimension: statement_code {
    group_label: "Sig Test Attributes"
    type: string
    sql: ${TABLE}.statementCode ;;
  }

  dimension: statement_label {
    group_label: "Sig Test Attributes"
    type: string
    sql: ${TABLE}.statementLabel ;;
  }

  dimension: time_period_code {
    hidden: yes
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.timePeriodCode ;;
  }

  dimension: time_period_label {
    label: "Wave"
    group_label: "Demographic Fields"
    type: string
    order_by_field: time_period_order
    sql: ${TABLE}.timePeriodLabel ;;
  }

  dimension: time_period_order {
    hidden: yes
    type: number
    sql: ${TABLE}.timePeriodOrder ;;
  }

  dimension: val_type {
    type: string
    hidden: yes
    sql: ${TABLE}.valType ;;
  }

  dimension: wtMetric {
    type: number
    label: "Weight Metric"
    group_label: "For Developers"
    sql: ${TABLE}.wtMetric ;;
  }


  dimension: header_title {
    label: "Title USAT"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Ipsos Trends: USAT
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>;;
  }

  dimension: header_title_1 {
    label: "Title Trust"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Ipsos Trends: Trust
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>;;
  }

  dimension: header_title_2 {
    label: "Title Feature Awareness"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Ipsos Trends: Feature Awareness - Places to Pay
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>;;
  }

  dimension: header_title_3 {
    label: "Title Staple Attributes"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Staples: Attributes
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>
    ;;
  }

  dimension: header_title_4 {
    label: "Title Marketing Funnel"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Ipsos Marketing Funnel Chart - Google Pay vs Others
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>
    ;;
  }

  dimension: header_title_5 {
    label: "Title Barriers"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Staples: Barriers and Motivations
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>
    ;;
  }

  dimension: header_title_6 {
    label: "Title Features Trend"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Staples: Feature Trends
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>
    ;;
  }

  dimension: header_title_7 {
    label: "Title Usage Personality"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Staples: Usage & Personality
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>
    ;;
  }

  dimension: header_title_8 {
    label: "Title Brand Funnel"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Ipsos Trends: Brand Funnel
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>
    ;;
  }

  dimension: header_title_9 {
    label: "Title Top Metrics"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${time_period_label} ;;
    html:
    <body>
    <div style="position: fixed; top: 0px; width:100%; height: 55px;color: black; font-size:175%;text-align:center;overflow-y: hidden">
        Google Pay Top Metrics Health Dashboard
    </div>
    <div style="position: fixed; top: 0px; width:100%; height: 20px;color: dimgrey; font-size:100%;text-align:center;overflow-y: hidden">
        Google Pay Tracking India Report - {{value}}
    </div>
    </body>
    ;;
  }

  measure: un_wt_base {
    label: "Un Weighted Base"
    group_label: "Weight Measures"
    type: sum
    value_format_name: decimal_0
    sql: ${TABLE}.unWtBase ;;
  }

  measure: un_wt_count {
    label: "Un Weighted Count"
    group_label: "Weight Measures"
    type: sum
    value_format_name: decimal_0
    sql: ${TABLE}.unWtCount ;;
  }

  measure: wt_base {
    label: "Weighted Base"
    group_label: "Weight Measures"
    type: sum
    value_format_name: decimal_0
    sql: round(${TABLE}.wtBase) ;;
  }

  measure: wt_count {
    label: "Weighted Count"
    group_label: "Weight Measures"
    type: sum
    value_format_name: decimal_0
    sql: ${TABLE}.wtCount ;;
  }

  measure: effective_base {
    type: sum
    group_label: "Weight Measures"
    label: "Effective Base"
    value_format_name: decimal_0
    sql: ${TABLE}.effectiveBase ;;
  }

  measure: Weighted_Pct {
    label: "Weighted Percent"
    group_label: "Weight Measures"
    type: number
    value_format_name: percent_0
    sql: ${wt_count}/NULLIF(${wt_base},0) ;;
  }

  measure: wt_percent {
    type: sum
    group_label: "For Developers"
    label: "Weighted Percent (original)"
    value_format_name: percent_0
    sql: (${TABLE}.wtMetric)/100 ;;
  }
}
