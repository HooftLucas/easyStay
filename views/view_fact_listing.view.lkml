view: view_fact_listing {
  sql_table_name: `EasyStayTable.view_fact_listing` ;;
  dimension: accommodationTypeid {
    type: number
    sql: ${TABLE}.accommodationTypeID ;;
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
  dimension: city_id {
    type: number
    sql: ${TABLE}.cityID ;;
  }
  dimension: city_name {
    type:  string
    sql: ${TABLE}.name ;;
  }
  dimension: cleanliness_rating_int {
    type: number
    sql: ${TABLE}.cleanliness_rating_int ;;
  }
  dimension: distance_from_center {
    type: number
    sql: ${TABLE}.distance_from_center ;;
    value_format: "#.00"

  }
  # Ensure there's a similar is_super_host field
  dimension: is_super_host {
    type: yesno
    sql: ${TABLE}.is_super_host ;;
  }


  dimension: guest_satisfaction_overall {
    type: number
    sql: ${TABLE}.guest_satisfaction_overall ;;
  }
  dimension: host_id {
    type: number
    sql: ${TABLE}.hostID ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }
  dimension: metro_distance {
    type: number
    sql: ${TABLE}.metro_distance ;;
    value_format: "#.00"

  }
  dimension: period_id {
    type: number
    sql: ${TABLE}.periodID ;;
  }
  dimension: person_capacity {
    type: number
    sql: ${TABLE}.person_capacity ;;
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
  dimension: row_hash {
    type: string
    sql: ${TABLE}.row_hash ;;
  }
  dimension: coordinates {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lng ;;
  }

  measure: count {
    type: count
  }
  measure: average_price {
    type:  average
    sql: ${price} ;;
    value_format: "€#.00"


  }
}
