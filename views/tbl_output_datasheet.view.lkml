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
    # hidden: yes
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

  dimension: metric_code_label {
    type: string
    group_label: "For Developers"
    case: {
      when: {
        sql: ${TABLE}.metricCode = "Q2" ;;
        label: "Awareness (Q2)"
      }
      when: {
        sql: ${TABLE}.metricCode = "Q3" ;;
        label: "Consideration (Q3)"
      }
      when: {
        sql: ${TABLE}.metricCode = "Q4" ;;
        label: "Intent (Q4)"
      }
      when: {
        sql: ${TABLE}.metricCode = "Q4_TRUST" ;;
        label: "Trust (Q4)"
      }
    }
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
    html: <p style="font-size:90%;word-wrap:break-word;text-align:right;justify-content: center">{{ rendered_value }}</p> ;;
  }

  dimension: response_order {
    group_label: "Question Information"
    # hidden: yes
    type: number
    sql: ${TABLE}.responseOrder ;;
  }

  dimension: response_label_custom {
    group_label: "For Developers"
    type: string
    sql: case ${response_label}
                WHEN 'Extremely satisfied' THEN 'Extremely / Moderately satisfied'
                WHEN 'Moderately satisfied' THEN 'Extremely / Moderately satisfied'
                WHEN 'More than once a day' THEN 'Use Google Pay at least once per day'
                WHEN 'About once a day' THEN 'Use Google Pay at least once per day'
                WHEN 'A few times a week' THEN 'Use Google Pay at least once per week'
                WHEN 'About once a week' THEN 'Use Google Pay at least once per week'
                WHEN 'A few times a month' THEN 'Use Google Pay monthly or less often'
                WHEN 'Once a month or less often' THEN 'Use Google Pay monthly or less often'
                ELSE ${response_label}
                END;;
  }

  dimension: response_label_custom_1 {
    group_label: "For Developers"
    type: string
    sql: case ${response_label}
                WHEN 'Slightly satisfied' THEN 'Slightly/Neither/Extremely dissatisfied'
                WHEN 'Neither satisfied nor dissatisfied' THEN 'Slightly/Neither/Extremely dissatisfied'
                WHEN 'Slightly dissatisfied' THEN 'Slightly/Neither/Extremely dissatisfied'
                WHEN 'Moderately dissatisfied' THEN 'Slightly/Neither/Extremely dissatisfied'
                WHEN 'Extremely dissatisfied' THEN 'Slightly/Neither/Extremely dissatisfied'

                WHEN 'More than once a day' THEN 'Use Google Pay at least once per day'
                WHEN 'About once a day' THEN 'Use Google Pay at least once per day'
                WHEN 'A few times a week' THEN 'Use Google Pay at least once per week'
                WHEN 'About once a week' THEN 'Use Google Pay at least once per week'
                WHEN 'A few times a month' THEN 'Use Google Pay monthly or less often'
                WHEN 'Once a month or less often' THEN 'Use Google Pay monthly or less often'
                ELSE ${response_label}
                END;;
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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
    group_label: "For Developers"
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

  dimension: looker_image {
    label: "Brand"
    group_label: "Developer Fields (not for use)"
    type: string
    sql: ${TABLE}.responseLabel;;
    html:
    {% if value == 'Google Pay' or value == 'Gpay' %}
         <p><img src="https://pay.google.com/about/static_kcs/images/logos/google-pay-logo.svg" height=50 width=50></p>
      {% elsif value == 'NET: Google Pay [original and billfold logos]' %}
        <p><img src="https://pay.google.com/about/static_kcs/images/logos/google-pay-logo.svg" height=50 width=50 ></p>
      {% elsif value == 'Amazon Pay' %}
        <p><img src="https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/032018/untitled-1_160.png" height=50 width=50 ></p>
      {% elsif value == 'BHIM UPI' or value == 'BHIM / UPI' %}
        <p><img src="https://sutrashome.files.wordpress.com/2019/04/bhim.jpg" height=30 width=50></p>
      {% elsif value == 'Samsung Pay' %}
        <p><img src="https://securecdn.pymnts.com/wp-content/uploads/2020/01/Screen-Shot-2020-01-31-at-3.54.58-PM.png" height=30 width=50></p>
      {% elsif value == 'Mastercard Masterpass' %}
        <p><img src="https://www.pymnts.com/wp-content/uploads/2016/09/Mastercard-Digital-.png" height=30 width=50></p>
      {% elsif value == 'Visa Checkout' %}
        <p><img src="https://www.merchant-accounts.ca/pics/VisaCheckoutLogo.jpg" height=30 width=50></p>
      {% elsif value == 'Airtel Payments Bank' %}
        <p><img src="https://upload.wikimedia.org/wikipedia/commons/9/9c/Airtel_payments_bank_logo.jpg" height=30 width=50></p>
      {% elsif value == 'HDFC PayZapp' %}
        <p><img src="https://s3.amazonaws.com/zaubatrademarks/49a573c7-b5d5-4edc-8f5e-7791dba1c3f8.png" height=30 width=50></p>
      {% elsif value == 'WhatsApp Pay' %}
        <p><img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg" height=30 width=50></p>
      {% elsif value == 'JioMoney' %}
        <p><img src="https://avatars0.githubusercontent.com/u/30654090?s=460&u=4992d663f76ee28a85b20f447b83c2856d06bad6&v=4" height=50 width=50></p>
      {% elsif value == 'Tez' %}
        <p><img src="https://icon2.cleanpng.com/20180328/zze/kisspng-tez-unified-payments-interface-google-apps-5abb75dc86eca2.9888044115222348445527.jpg" height=30 width=30></p>
      {% else %}
        <p><img src="https://logo-core.clearbit.com/{{response_label}}.com" height=30 width=50 /></p>
      {% endif %} ;;
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
