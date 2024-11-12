connection: "easystay_lu"

include: "/views/**/*.view.lkml"
datagroup: lu_easystay_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lu_easystay_default_datagroup

explore: easy_stay_view {}

explore: dim_acc_type {}

explore: dim_city {}

explore: dim_host {}

explore: view_dim_acc {}

explore: view_dim_city {}

explore: view_dim_host {}

explore: view_fact_table {
  join: dim_city {
    sql_on: ${view_fact_table.city_id} = ${dim_city.city_id} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: dim_acc_type {
    sql_on: ${view_fact_table.accommodation_id} = ${dim_acc_type.acc_type_id} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: dim_host {
    sql_on: ${view_fact_table.host_id} = ${dim_host.host_id} ;;
    relationship: many_to_one
    type: left_outer
  }
}
