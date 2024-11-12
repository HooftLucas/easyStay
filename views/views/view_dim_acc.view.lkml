view: view_dim_acc {
  sql_table_name: `hooftlucas-devlab.easyStay.EasyStayView.view_dim_acc` ;;
  dimension: acc_type_id {
    type:  number
    sql: ${TABLE}.accommodation_id ;;
  }
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
