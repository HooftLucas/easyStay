view: dim_host {
  sql_table_name: `hooftlucas-devlab.easyStay.EasyStayView.dim_host` ;;
  dimension: host_id {
    type:  number
    sql:  ${TABLE}.host_id ;;
  }
  dimension: is_super_host {
    type:  yesno
    sql: ${TABLE}.host_type ;;
  }
 }
