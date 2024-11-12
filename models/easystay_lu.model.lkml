connection: "easystay_lu"

include: "/views/**/*.view.lkml"

datagroup: easystay_lu_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: easystay_lu_default_datagroup

explore: dim_host {}

explore: dim_accommodation_type {}

explore: view_dim_city {}

explore: view_dim_host {}

explore: view_dim_accommodationtype {}

explore: dim_city {}

explore: fact_listing {}


explore: dim_period {}

explore: view_dim_period {}

explore: view_fact_listing {
  join: dim_city {
    sql_on: ${view_fact_listing.city_id} = ${dim_city.city_id} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: dim_accommodation_type {
    sql_on: ${view_fact_listing.accommodationTypeid} = ${dim_accommodation_type.accommodation_type_id} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: dim_host {
    sql_on: ${view_fact_listing.host_id} = ${dim_host.host_id} ;;
    relationship: many_to_one
    type: left_outer
  }

}
