connection: "snowflake_metadata"

# include all the views
include: "*.view"

datagroup: snowflake_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowflake_analytics_default_datagroup
