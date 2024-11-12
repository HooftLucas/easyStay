view: dim_city {
  sql_table_name: `hooftlucas-devlab.easyStay.EasyStayView.dim_city` ;;
  dimension: city_id {
    type:  number
    sql: ${TABLE}.city_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.city_name ;;
  }
  measure: count {
    type:  count
    drill_fields: [name]
  }

}
