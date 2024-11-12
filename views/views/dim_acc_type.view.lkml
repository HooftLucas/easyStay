view: dim_acc_type {
  sql_table_name: `hooftlucas-devlab.easyStay.EasyStayView.dim_acc_type` ;;


  dimension: is_business {
    type:  yesno
    sql:  ${TABLE}.biz ;;
  }
  dimension: is_multi {
    type:  yesno
    sql: ${TABLE}.multi ;;
  }
  dimension: is_private{
    type:  yesno
    sql:  ${TABLE}.private ;;
  }
  measure: count {
    type:  count
  }
}
