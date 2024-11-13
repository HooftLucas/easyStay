connection: "easystay_lu"

include: "/views/**/*.view.lkml"
datagroup: lu_easystay_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lu_easystay_default_datagroup

explore: easy_stay_view {}
