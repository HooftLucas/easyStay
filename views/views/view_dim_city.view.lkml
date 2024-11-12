view: view_dim_city {
  sql_table_name: `hooftlucas-devlab.easyStay.EasyStayView.EasyStayView.view_dim_city` ;;

  dimension: name {
    type: string
    sql: ${TABLE}.city_name ;;
  }
  measure: count {
    type:  count
    drill_fields: [name]
  }
 }
