connection: "rivery_snowflake"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

datagroup: social_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 hour"
}

persist_with: social_analytics_default_datagroup

explore: social_performance {}
