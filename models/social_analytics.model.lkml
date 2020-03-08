connection: "rivery_snowflake"

# include all the views
include: "/views/**/*.view"

datagroup: social_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: social_analytics_default_datagroup

explore: fact_social {}
