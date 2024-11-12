view: view_dim_period {
  sql_table_name: `EasyStayTable.view_dim_period` ;;

  dimension: period_id {
    type: number
    sql: ${TABLE}.periodID ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
  }
}
