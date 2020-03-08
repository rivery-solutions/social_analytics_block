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

  measure: avg_video_view_time {
    type: number
    sql: ${TABLE}."AVG_VIDEO_VIEW_TIME" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."CHANNEL" ;;
  }

  measure: comments {
    type: number
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
    type: number
    sql: ${TABLE}."ENGAGEMENT" ;;
  }

  measure: engagement_pct {
    type: number
    sql: ${TABLE}."ENGAGEMENT_PCT" ;;
  }

  dimension: favorite_count {
    type: number
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
    type: number
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
    type: number
    sql: ${TABLE}."LIKES" ;;
  }

  measure: link_clicks {
    type: number
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
    type: number
    sql: ${TABLE}."OTHER_CLICKS" ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}."OWNER_ID" ;;
  }

  measure: page_consumptions {
    type: number
    sql: ${TABLE}."PAGE_CONSUMPTIONS" ;;
  }

  measure: page_engaged_users {
    type: number
    sql: ${TABLE}."PAGE_ENGAGED_USERS" ;;
  }

  measure: page_fan_adds {
    type: number
    sql: ${TABLE}."PAGE_FAN_ADDS" ;;
  }

  measure: page_fan_count {
    type: number
    sql: ${TABLE}."PAGE_FAN_COUNT" ;;
  }

  measure: page_fan_removes {
    type: number
    sql: ${TABLE}."PAGE_FAN_REMOVES" ;;
  }

  measure: page_impressions {
    type: number
    sql: ${TABLE}."PAGE_IMPRESSIONS" ;;
  }

  measure: page_reach {
    type: number
    sql: ${TABLE}."PAGE_REACH" ;;
  }

  measure: page_views {
    type: number
    sql: ${TABLE}."PAGE_VIEWS" ;;
  }

  dimension: permalink {
    type: string
    sql: ${TABLE}."PERMALINK" ;;
  }

  measure: photo_view {
    type: number
    sql: ${TABLE}."PHOTO_VIEW" ;;
  }

  dimension: post_id {
    type: string
    sql: ${TABLE}."POST_ID" ;;
  }

  measure: reach {
    type: number
    sql: ${TABLE}."REACH" ;;
  }

  measure: retweets {
    type: number
    sql: ${TABLE}."RETWEETS" ;;
  }

  measure: saved {
    type: number
    sql: ${TABLE}."SAVED" ;;
  }

  measure: shares {
    type: number
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
    type: number
    sql: ${TABLE}."VIDEO_VIEWS" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
