view: social_performance {
  label: "Social Performance"
  sql_table_name: "DWH"."FACT_SOCIAL"
    ;;

# Dimensions

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

  dimension: comments {
    type: number
    sql: ${TABLE}."CHANNEL" ;;
  }

  measure: total_comments {
    type: sum
    sql: ${comments} ;;
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


  dimension: engagement {
    type: number
    sql: ${TABLE}."ENGAGEMENT" ;;
    hidden: yes
  }

  measure: post_engagement {
    type: sum
    sql: ${engagement} ;;
  }

  measure: engagement_rate {
    type: number
    value_format_name: percent_2
    sql: ${post_engagement}/${impressions} ;;
  }



  dimension: favorite_count {
    type: number
    sql: ${TABLE}."FAVORITE_COUNT" ;;
    hidden: yes
  }

  measure: page_favorite_count {
    type: sum
    sql: ${favorite_count} ;;
  }

  measure: favorites_current_month {
    type: sum
    sql: ${favorite_count} ;;
    filters: {
      field: created_date
      value: "30 days"
    }
  }

  measure: favorites_previous_month {
    type: sum
    sql: ${favorite_count} ;;
    filters: {
      field: created_date
      value: "60 days ago for 30 days"
    }
  }

  measure: favorites_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${favorites_current_month}-${favorites_previous_month})/ NULLIF(${favorites_previous_month},0) ;;
  }


  dimension: ig_id {
    type: string
    sql: ${TABLE}."IG_ID" ;;
  }

  dimension: impressions {
  type: number
  sql: ${TABLE}."IMPRESSIONS"  ;;
  hidden: yes
  }

  measure: post_impressions {
    type: sum
    sql: ${impressions} ;;
  }

  measure: impressions_twitter_current_month {
    type: sum
    sql: ${impressions} ;;
    filters: {
      field: channel
      value: "Twitter"
    }
    filters: {
      field: date_date
      value: "30 days"
    }
  }

  measure: impressions_twitter_previous_month {
    type: sum
    sql: ${impressions} ;;
    filters: {
      field: channel
      value: "Twitter"
    }
    filters: {
      field: date_date
      value: "60 days ago for 30 days"
    }
  }


  measure: impressions_twitter_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${impressions_twitter_current_month}-${impressions_twitter_previous_month})
      / NULLIF(${impressions_twitter_previous_month},0) ;;
  }


  dimension: is_hidden {
    type: yesno
    sql: ${TABLE}."IS_HIDDEN" ;;
  }

  dimension: is_published {
    type: yesno
    sql: ${TABLE}."IS_PUBLISHED" ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}."LIKES" ;;
  }

  dimension: link_clicks {
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

  dimension: other_clicks {
    type: number
    sql: ${TABLE}."OTHER_CLICKS" ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: page_consumptions {
    type: number
    sql: ${TABLE}."PAGE_CONSUMPTIONS" ;;
    hidden: yes
  }

  measure: page_consumptions_daily {
    type: sum_distinct
    sql_distinct_key: ${account_id} || ${date_date};;
    sql: ${page_consumptions} ;;
  }

  dimension: page_engaged_users {
    type: number
    sql: ${TABLE}."PAGE_ENGAGED_USERS" ;;
    hidden: yes
  }

  measure: page_engaged_users_daily {
    type: sum_distinct
    sql_distinct_key: ${account_id} || ${date_date};;
    sql: ${page_engaged_users} ;;
  }

  measure: page_engaged_users_current_month {
    type: sum_distinct
    sql_distinct_key: ${account_id} || ${date_date};;
    sql: ${page_engaged_users} ;;
    filters: {
      field: date_date
      value: "30 days"
    }
  }

  measure: page_engaged_users_previous_month {
    type: sum_distinct
    sql_distinct_key: ${account_id} || ${date_date};;
    sql: ${page_engaged_users} ;;
    filters: {
      field: date_date
      value: "60 days ago for 30 days"
    }
  }

  measure: page_engaged_users_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${page_engaged_users_current_month}-${page_engaged_users_previous_month})
    / NULLIF(${page_engaged_users_previous_month},0) ;;
  }

  measure: page_engagement_rate {
    type: number
    value_format_name: percent_2
    sql:${page_engaged_users}/nullif(${page_impressions},0) ;;
  }

  measure: page_engagement_rate_current_month {
    type: number
    value_format_name: percent_2
    sql:${page_engaged_users_current_month}/nullif(${page_impressions_current_month},0);;
  }

  measure: page_engagement_rate_previous_month {
    type: number
    value_format_name: percent_2
    sql:${page_engaged_users_previous_month}/nullif(${page_impressions_previous_month},0);;
  }

  measure: page_engagement_rate_monthly_change {
    type:  number
    sql: ${page_engagement_rate_current_month} - ${page_engagement_rate_previous_month} ;;
  }

  dimension: page_fan_adds {
    type: number
    sql: ${TABLE}."PAGE_FAN_ADDS" ;;
    hidden: yes
  }

  measure: page_fan_adds_daily {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_fan_adds} ;;
  }

  dimension: page_fan_count {
    type: number
    sql:  ${TABLE}."PAGE_FAN_COUNT" ;;
    hidden: yes
  }

  measure: page_fan_count_daily {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_fan_count} ;;
  }


  dimension: page_fan_count_today {
    type:  number
    sql: ${TABLE}."PAGE_FAN_COUNT_TODAY" ;;
    hidden: yes
  }

  measure: page_fan_count_current {
    type: sum_distinct
    sql_distinct_key: ${account_id}
    sql: ${page_fan_count_today} ;;
    filters: {
      field: date_date
      value: "24 hours"
    }
  }

  measure: page_fan_count_previous_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_fan_count} ;;
    filters: {
      field: date_date
      value: "1 month ago for 1 day"
    }
  }

  measure: page_fan_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${page_fan_count_current}-${page_fan_count_previous_month})/ NULLIF(${page_fan_count_previous_month},0) ;;
  }

  dimension: page_fan_removes {
    type: number
    sql: ${TABLE}."PAGE_FAN_REMOVES" ;;
    hidden: yes
  }

  measure: page_fan_removes_daily {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_fan_removes} ;;
  }

  dimension: page_impressions {
    type: number
    sql: ${TABLE}."PAGE_IMPRESSIONS";;
    hidden: yes
  }

  measure: page_impressions_daily {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_impressions};;
  }

  measure: page_impressions_facebook_current_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_impressions};;
    filters: {
      field: channel
      value: "Facebook"
    }
    filters: {
      field: date_date
      value: "30 days"
    }
  }

  measure: page_impressions_facebook_previous_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_impressions};;
    filters: {
      field: channel
      value: "Facebook"
    }
    filters: {
      field: date_date
      value: "60 days ago for 30 days"
    }
  }

  measure: page_impressions_facebook_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${page_impressions_facebook_current_month}-${page_impressions_facebook_previous_month})/ NULLIF(${page_impressions_facebook_previous_month},0) ;;
  }

  measure: page_impressions_instagram_current_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_impressions};;
    filters: {
      field: channel
      value: "Instagram"
    }
    filters: {
      field: date_date
      value: "30 days"
    }
  }


  measure: page_impressions_instagram_previous_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_impressions};;
    filters: {
      field: channel
      value: "Instagram"
    }
    filters: {
      field: date_date
      value: "60 days ago for 30 days"
    }
  }

  measure: page_impressions_instagram_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${page_impressions_instagram_current_month}-${page_impressions_instagram_previous_month})/ NULLIF(${page_impressions_instagram_previous_month},0) ;;
  }

  measure: page_impressions_current_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_impressions};;
    filters: {
      field: date_date
      value: "30 days"
    }
  }

  measure: page_impressions_previous_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_impressions};;
    filters: {
      field: date_date
      value: "60 days ago for 30 days"
    }
  }

  dimension: page_reach {
    type: number
    sql: ${TABLE}."PAGE_REACH" ;;
    hidden: yes
  }

  measure: page_reach_daily {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_reach} ;;
  }

  measure: page_reach_instagram_current_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_reach} ;;
    filters: {
      field: channel
      value: "Instagram"
    }
    filters: {
      field: date_date
      value: "30 days"
    }
  }

  measure: page_reach_instagram_previous_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_reach} ;;
    filters: {
      field: channel
      value: "Instagram"
    }
    filters: {
      field: date_date
      value: "60 days ago for 30 days"
    }
  }

  measure: page_reach_instagram_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${page_reach_instagram_current_month}-${page_reach_instagram_previous_month})/ NULLIF(${page_reach_instagram_previous_month},0) ;;
  }

  measure: page_reach_facebook_current_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_reach} ;;
    filters: {
      field: channel
      value: "Facebook"
    }
    filters: {
      field: date_date
      value: "30 days"
    }
  }

  measure: page_reach_facebook_previous_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_reach} ;;
    filters: {
      field: channel
      value: "Facebook"
    }
    filters: {
      field: date_date
      value: "60 days ago for 30 days"
    }
  }

  measure: page_reach_facebook_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${page_reach_facebook_current_month}-${page_reach_facebook_previous_month})/ NULLIF(${page_reach_facebook_previous_month},0) ;;
  }

  dimension: page_views{
    type: number
    sql: ${TABLE}."PAGE_VIEWS" ;;
    hidden: yes
  }

  measure: page_views_daily {
    type: sum_distinct
    sql_distinct_key: ${account_id}|| ${date_date} ;;
    sql: ${page_views} ;;
  }

  dimension: permalink {
    type: string
    sql: ${TABLE}."PERMALINK" ;;
  }



  dimension: photo_view {
    type: number
    sql: ${TABLE}."PHOTO_VIEW" ;;
  }

  dimension: post_id {
    type: string
    sql: ${TABLE}."POST_ID" ;;
  }


  dimension: reach {
    type: number
    sql: ${TABLE}."REACH" ;;
    hidden: yes
  }

# only take most recent reach for each post id?
  measure: post_reach {
    type: sum
    sql: ${reach} ;;
  }

  dimension: retweets {
    type: number
    sql: ${TABLE}."RETWEETS" ;;
  }

  measure: retweets_current_month {
    type: sum
    sql: ${retweets} ;;
    filters: {
      field: created_date
      value: "30 days"
    }
  }

  measure: retweets_previous_month {
    type: sum
    sql: ${retweets} ;;
    filters: {
      field: created_date
      value: "60 days ago for 30 days"
    }
  }

  measure: retweets_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${retweets_current_month}-${retweets_previous_month})/ NULLIF(${retweets_previous_month},0) ;;
  }

  dimension: saved {
    type: number
    sql: ${TABLE}."SAVED" ;;
  }

  dimension: shares {
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

  dimension: total_followers {
    type: number
    sql: ${TABLE}."TOTAL_FOLLOWERS" ;;
    hidden: yes
  }

  measure: total_followers_today {
    type: sum_distinct
    sql_distinct_key: ${account_id}
    sql: ${total_followers} ;;
    filters: {
      field: date_date
      value: "1 day ago"}
  }

  #Instagram API will only pull followers at time of pull. This will have to run with daily
  #inserts so that historical follow counts can be tracked.

  measure: total_followers_previous_month {
    type: sum_distinct
    sql_distinct_key: ${account_id}
    sql: ${total_followers} ;;
    filters: {
      field: date_date
      value: "1 month ago for 1 day"}
  }

  measure: total_followers_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${total_followers_today}-${total_followers_previous_month})/ NULLIF(${total_followers_previous_month},0) ;;
  }

  dimension: video_views {
    type: number
    sql: ${TABLE}."VIDEO_VIEWS" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }

  measure: count_distinct_posts {
    type: count_distinct
    sql: ${post_id} ;;
  }

  measure: count_distinct_posts_current_month {
    type: count_distinct
    sql: ${post_id} ;;
    filters: {
      field: created_date
      value: "30 days"
    }
  }

  measure: count_distinct_posts_twitter_current_month {
    type: count_distinct
    sql: ${post_id} ;;
    filters: {
      field: created_date
      value: "30 days"
    }
    filters: {
      field: channel
      value: "Twitter"
    }
  }

  measure: count_distinct_posts_twitter_previous_month {
    type: count_distinct
    sql: ${post_id} ;;
    filters: {
      field: created_date
      value: "60 days ago for 30 days"
    }
    filters: {
      field: channel
      value: "Twitter"
    }
  }

  measure: count_distinct_posts_twitter_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${count_distinct_posts_twitter_current_month}-${count_distinct_posts_twitter_previous_month})/ NULLIF(${count_distinct_posts_twitter_previous_month},0) ;;
  }

  measure: count_distinct_posts_instagram_current_month {
    type: count_distinct
    sql: ${post_id} ;;
    filters: {
      field: created_date
      value: "30 days"
    }
    filters: {
      field: channel
      value: "Instagram"
    }
  }

  measure: count_distinct_posts_instagram_previous_month {
    type: count_distinct
    sql: ${post_id} ;;
    filters: {
      field: created_date
      value: "60 days ago for 30 days"
    }
    filters: {
      field: channel
      value: "Instagram"
    }
  }

  measure: count_distinct_posts_instagram_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${count_distinct_posts_instagram_current_month}-${count_distinct_posts_instagram_previous_month})/ NULLIF(${count_distinct_posts_instagram_previous_month},0) ;;
  }

  measure: count_distinct_posts_previous_month {
    type: count_distinct
    sql: ${post_id} ;;
    filters: {
      field: created_date
      value: "60 days ago for 30 days"
    }
  }

  measure: count_distinct_posts_monthly_change {
    type: number
    value_format_name: percent_2
    sql: (${count_distinct_posts_current_month}-${count_distinct_posts_previous_month})/ NULLIF(${count_distinct_posts_previous_month},0) ;;
  }

# Measures

  # All channels

  # Facebook and Instagram

  # Twitter Only


# Sets

  set: dimension_drill {
    fields: [channel, account_name, media_type]
  }


}
