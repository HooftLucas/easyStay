view: dim_period {
  sql_table_name: `EasyStayTable.dim_period` ;;

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
