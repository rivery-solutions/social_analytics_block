view: fact_social {
  sql_table_name: "DWH"."FACT_SOCIAL"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."CHANNEL" ;;
  }

  measure: comments {
    type: sum
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATED_DATE" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  measure: engagement {
    type: sum
    sql: ${TABLE}."ENGAGEMENT" ;;
  }

#create this in Looker?
  measure: engagement_pct {
    type: number
    sql: ${TABLE}."ENGAGEMENT_PCT" ;;
  }

  measure: favorite_count {
    type: sum
    sql: ${TABLE}."FAVORITE_COUNT" ;;
  }

  #dimension: follows {
  #  type: number
  #  sql: ${TABLE}."FOLLOWS" ;;
  #}

  dimension: ig_id {
    type: string
    sql: ${TABLE}."IG_ID" ;;
  }

  measure: impressions {
    type: sum
    sql: ${TABLE}."IMPRESSIONS" ;;
  }

  dimension: is_hidden {
    type: yesno
    sql: ${TABLE}."IS_HIDDEN" ;;
  }

  dimension: is_published {
    type: yesno
    sql: ${TABLE}."IS_PUBLISHED" ;;
  }

  measure: likes {
    type: sum
    sql: ${TABLE}."LIKES" ;;
  }

  measure: link_clicks {
    type: sum
    sql: ${TABLE}."LINK_CLICKS" ;;
  }

  dimension: media_type {
    type: string
    sql: ${TABLE}."MEDIA_TYPE" ;;
  }

  dimension: media_url {
    type: string
    sql: ${TABLE}."MEDIA_URL" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }

  measure: other_clicks {
    type: sum
    sql: ${TABLE}."OTHER_CLICKS" ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}."OWNER_ID" ;;
  }

  measure: page_consumptions {
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" || ${TABLE}."DATE" ;;
    sql: ${TABLE}."PAGE_CONSUMPTIONS" ;;
  }

  measure: page_engaged_users {
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" || ${TABLE}."DATE" ;;
    sql: ${TABLE}."PAGE_ENGAGED_USERS" ;;
  }

  measure: page_fan_adds {
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" || ${TABLE}."DATE" ;;
    sql: ${TABLE}."PAGE_FAN_ADDS" ;;
  }

  measure: page_fan_count {
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" || ${TABLE}."DATE" ;;
    sql: ${TABLE}."PAGE_FAN_COUNT" ;;
  }

  measure: page_fan_removes {
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" || ${TABLE}."DATE" ;;
    sql: ${TABLE}."PAGE_FAN_REMOVES" ;;
  }

  measure: page_impressions {
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" || ${TABLE}."DATE" ;;
    sql: ${TABLE}."PAGE_IMPRESSIONS" ;;
  }

  measure: page_reach {
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" || ${TABLE}."DATE" ;;
    sql: ${TABLE}."PAGE_REACH" ;;
  }

  measure: page_views {
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" || ${TABLE}."DATE" ;;
    sql: ${TABLE}."PAGE_VIEWS" ;;
  }

  dimension: permalink {
    type: string
    sql: ${TABLE}."PERMALINK" ;;
  }

  measure: photo_view {
    type: sum
    sql: ${TABLE}."PHOTO_VIEW" ;;
  }

  dimension: post_id {
    type: string
    sql: ${TABLE}."POST_ID" ;;
  }

  measure: reach {
    type: sum
    sql: ${TABLE}."REACH" ;;
  }

  measure: retweets {
    type: sum
    sql: ${TABLE}."RETWEETS" ;;
  }

  measure: saved {
    type: sum
    sql: ${TABLE}."SAVED" ;;
  }

  measure: shares {
    type: sum
    sql: ${TABLE}."SHARES" ;;
  }

  dimension: status_type {
    type: string
    sql: ${TABLE}."STATUS_TYPE" ;;
  }

  dimension: title_caption {
    type: string
    sql: ${TABLE}."TITLE_CAPTION" ;;
  }

  measure: total_followers_ig {
    alias: [total_followers]
    type: sum_distinct
    sql_distinct_key: ${TABLE}."ACCOUNT_ID" ;;
    sql: ${TABLE}."TOTAL_FOLLOWERS" ;;
  }

  measure: video_views {
    type: sum
    sql: ${TABLE}."VIDEO_VIEWS" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
