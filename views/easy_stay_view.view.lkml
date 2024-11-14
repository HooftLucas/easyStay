view: easy_stay_view {
  sql_table_name: `hooftlucas-devlab.easyStay.EasyStayView` ;;

  dimension: accommodation {
    type: string
    sql: ${TABLE}.accommodation ;;
  }

  dimension: attr_index {
    type: number
    sql: ${TABLE}.attr_index ;;
  }
  dimension: attr_index_norm {
    type: number
    sql: ${TABLE}.attr_index_norm ;;
  }
  dimension: bedrooms {
    type: number
    sql: ${TABLE}.bedrooms ;;
  }
  dimension: biz {
    type: yesno
    sql: ${TABLE}.biz ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }
  dimension: cleanliness_rating {
    type: number
    sql: ${TABLE}.cleanliness_rating ;;
  }
  dimension: dist {
    type: number
    sql: ${TABLE}.dist ;;
    value_format: "#.00"
  }
  dimension: guest_satisfaction_percentage {
    type: number
    sql: ${TABLE}.guest_satisfaction_percentage ;;
  }

  dimension: host_type {
    type: yesno
    sql: ${TABLE}.host_type ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }
  dimension: metro_dist {
    type: number
    sql: ${TABLE}.metro_dist ;;
    value_format: "#.00"
  }
  dimension: multi {
    type: yesno
    sql: ${TABLE}.multi ;;
  }
  dimension: person_capacity {
    type: number
    sql: ${TABLE}.person_capacity ;;
  }
  dimension: private {
    type: yesno
    sql: ${TABLE}.private ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
    value_format: "€#.00"
  }
  dimension: rest_index {
    type: number
    sql: ${TABLE}.rest_index ;;
  }
  dimension: rest_index_norm {
    type: number
    sql: ${TABLE}.rest_index_norm ;;
  }
  dimension: week_type {
    type: string
    sql: ${TABLE}.week_type ;;
  }
  dimension: city_lat  {
    type:  number
    sql:  ${TABLE}.city_lat ;;
  }
  dimension: city_long {
    type:  number
    sql:  ${TABLE}.city_lng ;;
  }
  dimension: coordinates_city{
    type:  location
    sql_latitude: ${TABLE}.city_lat;;
    sql_longitude: ${TABLE}.city_lng ;;
  }
  dimension: coordinates {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lng ;;
  }

  # Filtered dimension for cleanliness_rating < 7
  dimension: cleanliness_rating_below_7 {
    type: number
    sql: CASE WHEN ${TABLE}.cleanliness_rating < 7 THEN ${TABLE}.cleanliness_rating ELSE NULL END ;;
    hidden: yes
  }
  dimension: cleanliness_rating_above_7 {
    type: number
    sql: CASE WHEN ${TABLE}.cleanliness_rating > 7 THEN ${TABLE}.cleanliness_rating ELSE NULL END ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: [city_name]
  }
  measure: average_price {
    type:  average
    sql: ${TABLE}.price;;
    value_format: "€#.00"
  }
  measure: average_quality {
    type: average
    sql:  ${TABLE}.guest_satisfaction_percentage ;;
    value_format: "#.00"
  }

  measure: M_metro_dist {
    type: number
    sql: ${TABLE}.metro_dist ;;
  }
  measure: M_cost{
    type:  number
    sql: ${TABLE}.price;;
    value_format: "€#.00"

  }
  measure: M_guest {
    type:  average
    sql: ${TABLE}.guest_satisfaction_percentage ;;
    value_format: "#.00"
  }
  measure: M_bed {
    type: sum
    sql: ${TABLE}.bedrooms ;;
  }
  measure: total_true_is_super_host {
    type: sum
    sql: CASE WHEN ${host_type} = TRUE THEN 1 ELSE 0 END ;;
  }


}
