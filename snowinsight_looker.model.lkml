connection: "snowflake_metadata"

# include all the views
include: "*.view"

datagroup: snowinsight_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowinsight_looker_default_datagroup
