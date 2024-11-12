view: view_fact_table {
  sql_table_name: `hooftlucas-devlab.easyStay.EasyStayView.view_fact_table` ;;

  dimension: accommodation {
    type: string
    sql: ${TABLE}.accommodation ;;
  }
  dimension: accommodation_id {
    type: number
    sql: ${TABLE}.accommodation_id ;;
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
  dimension: city_id {
    type: number
    sql: ${TABLE}.city_id ;;
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
  dimension: guest_satisfaction_overall {
    type: number
    sql: ${TABLE}.guest_satisfaction_overall ;;
  }
  dimension: host_id {
    type: number
    sql: ${TABLE}.host_id ;;
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
  dimension: real_sum {
    type: number
    sql: ${TABLE}.realSum ;;
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

  dimension: coordinates {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lng ;;
  }

  measure: count {
    type: count
    drill_fields: [city_name]
  }
  measure: average_price {
    type:  average
    sql: ${real_sum} ;;
    value_format: "€#.00"


  }
}
