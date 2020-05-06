- dashboard: social_analytics_tweet_performance
  title: 'Social Analytics: Tweet Performance'
  layout: newspaper
  elements:
  - title: Impressions
    name: Impressions
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.created_date, social_performance.post_id, social_performance.post_impressions,
      social_performance.post_interval]
    filters:
      social_performance.channel: Twitter
      social_performance.created_date: NOT NULL
    sorts: [social_performance.created_date desc]
    limit: 1000
    dynamic_fields: [{table_calculation: sum_latest_10, label: sum_latest_10, expression: "sum(offset_list(${social_performance.post_impressions},\n\
          0,${social_performance.post_interval}))\n", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: percent_change,
        label: percent_change, expression: "sum(offset_list(${social_performance.post_impressions},\n\
          0,${social_performance.post_interval}))\n  /\nsum(offset_list(${social_performance.post_impressions},\n\
          ${social_performance.post_interval},${social_performance.post_interval}))\n\
          -1", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", social_performance.created_date, social_performance.post_id,
      social_performance.title_caption, social_performance.post_engagement, social_performance.post_impressions,
      social_performance.comment_count, social_performance.retweet_count, social_performance.post_favorite_count]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      social_performance.post_id: 168
      social_performance.title_caption: 1743
      social_performance.post_engagement: 170
      social_performance.created_date: 131
      social_performance.comment_count: 151
      social_performance.post_impressions: 155
      social_performance.retweet_count: 142
      social_performance.post_favorite_count: 171
    series_cell_visualizations:
      social_performance.comment_count:
        is_active: false
      social_performance.post_engagement:
        is_active: true
    defaults_version: 1
    series_types: {}
    hidden_fields: [social_performance.post_impressions]
    listen:
      Post Interval: social_performance.post_interval_selector
      Account Name: social_performance.account_name
    row: 2
    col: 0
    width: 4
    height: 4
  - title: Retweets
    name: Retweets
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.created_date, social_performance.post_id, social_performance.retweet_count,
      social_performance.post_interval]
    filters:
      social_performance.channel: Twitter
      social_performance.created_date: NOT NULL
    sorts: [social_performance.created_date desc]
    limit: 1000
    dynamic_fields: [{table_calculation: sum_latest_10, label: sum_latest_10, expression: "sum(offset_list(${social_performance.retweet_count},\n\
          0,${social_performance.post_interval}))", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: percent_change,
        label: percent_change, expression: "sum(offset_list(${social_performance.retweet_count},\n\
          0,${social_performance.post_interval}))\n  /\nsum(offset_list(${social_performance.retweet_count},\n\
          ${social_performance.post_interval},${social_performance.post_interval}))\n\
          -1", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", social_performance.created_date, social_performance.post_id,
      social_performance.title_caption, social_performance.post_engagement, social_performance.post_impressions,
      social_performance.comment_count, social_performance.retweet_count, social_performance.post_favorite_count]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      social_performance.post_id: 168
      social_performance.title_caption: 1743
      social_performance.post_engagement: 170
      social_performance.created_date: 131
      social_performance.comment_count: 151
      social_performance.post_impressions: 155
      social_performance.retweet_count: 142
      social_performance.post_favorite_count: 171
    series_cell_visualizations:
      social_performance.comment_count:
        is_active: false
      social_performance.post_engagement:
        is_active: true
    defaults_version: 1
    series_types: {}
    hidden_fields: [social_performance.retweet_count]
    listen:
      Post Interval: social_performance.post_interval_selector
      Account Name: social_performance.account_name
    row: 2
    col: 12
    width: 4
    height: 4
  - title: Favorites
    name: Favorites
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.created_date, social_performance.post_id, social_performance.post_favorite_count,
      social_performance.post_interval]
    filters:
      social_performance.channel: Twitter
      social_performance.created_date: NOT NULL
    sorts: [social_performance.created_date desc]
    limit: 1000
    dynamic_fields: [{table_calculation: sum_latest_10, label: sum_latest_10, expression: "sum(offset_list(${social_performance.post_favorite_count},\n\
          0,${social_performance.post_interval}))\n", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: percent_change,
        label: percent_change, expression: "sum(offset_list(${social_performance.post_favorite_count},\n\
          0,${social_performance.post_interval}))\n  /\nsum(offset_list(${social_performance.post_favorite_count},\n\
          ${social_performance.post_interval},${social_performance.post_interval}))\n\
          -1", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", social_performance.created_date, social_performance.post_id,
      social_performance.title_caption, social_performance.post_engagement, social_performance.post_impressions,
      social_performance.comment_count, social_performance.retweet_count, social_performance.post_favorite_count]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      social_performance.post_id: 168
      social_performance.title_caption: 1743
      social_performance.post_engagement: 170
      social_performance.created_date: 131
      social_performance.comment_count: 151
      social_performance.post_impressions: 155
      social_performance.retweet_count: 142
      social_performance.post_favorite_count: 171
    series_cell_visualizations:
      social_performance.comment_count:
        is_active: false
      social_performance.post_engagement:
        is_active: true
    defaults_version: 1
    series_types: {}
    hidden_fields: [social_performance.post_favorite_count]
    listen:
      Post Interval: social_performance.post_interval_selector
      Account Name: social_performance.account_name
    row: 2
    col: 8
    width: 4
    height: 4
  - title: Replies
    name: Replies
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.created_date, social_performance.post_id, social_performance.comment_count,
      social_performance.post_interval]
    filters:
      social_performance.channel: Twitter
      social_performance.created_date: NOT NULL
    sorts: [social_performance.created_date desc]
    limit: 1000
    dynamic_fields: [{table_calculation: sum_latest_10, label: sum_latest_10, expression: 'sum(offset_list(${social_performance.comment_count},0,${social_performance.post_interval}))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_change, label: percent_change,
        expression: "sum(offset_list(${social_performance.comment_count},0,${social_performance.post_interval}))\n\
          \  /\nsum(offset_list(${social_performance.comment_count},${social_performance.post_interval},${social_performance.post_interval}))\n\
          -1", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", social_performance.created_date, social_performance.post_id,
      social_performance.title_caption, social_performance.post_engagement, social_performance.post_impressions,
      social_performance.comment_count, social_performance.retweet_count, social_performance.post_favorite_count]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      social_performance.post_id: 168
      social_performance.title_caption: 1743
      social_performance.post_engagement: 170
      social_performance.created_date: 131
      social_performance.comment_count: 151
      social_performance.post_impressions: 155
      social_performance.retweet_count: 142
      social_performance.post_favorite_count: 171
    series_cell_visualizations:
      social_performance.comment_count:
        is_active: false
      social_performance.post_engagement:
        is_active: true
    defaults_version: 1
    series_types: {}
    hidden_fields: [social_performance.comment_count]
    listen:
      Post Interval: social_performance.post_interval_selector
      Account Name: social_performance.account_name
    row: 2
    col: 16
    width: 4
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: The below KPIs compare metrics from the most recent N tweets (selected
      from 'Post Interval' filter) to the previous N tweets.
    body_text: ''
    row: 0
    col: 0
    width: 20
    height: 2
  - title: Engagement Rate
    name: Engagement Rate
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.created_date, social_performance.post_id, social_performance.post_interval,
      social_performance.post_impressions, social_performance.post_engagement]
    filters:
      social_performance.channel: Twitter
      social_performance.created_date: NOT NULL
    sorts: [social_performance.created_date desc]
    limit: 1000
    dynamic_fields: [{table_calculation: avg_latest_10, label: avg_latest_10, expression: "sum(offset_list(${social_performance.post_engagement},0,${social_performance.post_interval}))\n\
          /\nsum(offset_list(${social_performance.post_impressions},0,${social_performance.post_interval}))",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_change, label: percent_change,
        expression: "(${avg_latest_10} - ${avg_prev_10}) * 100", value_format: !!null '',
        value_format_name: decimal_2, is_disabled: false, _kind_hint: measure, _type_hint: number},
      {table_calculation: avg_prev_10, label: avg_prev_10, expression: "(sum(offset_list(${social_performance.post_engagement},${social_performance.post_interval},${social_performance.post_interval}))\n\
          /\nsum(offset_list(${social_performance.post_impressions},${social_performance.post_interval},${social_performance.post_interval})))",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", social_performance.created_date, social_performance.post_id,
      social_performance.title_caption, social_performance.post_engagement, social_performance.post_impressions,
      social_performance.comment_count, social_performance.retweet_count, social_performance.post_favorite_count]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      social_performance.post_id: 168
      social_performance.title_caption: 1743
      social_performance.post_engagement: 170
      social_performance.created_date: 131
      social_performance.comment_count: 151
      social_performance.post_impressions: 155
      social_performance.retweet_count: 142
      social_performance.post_favorite_count: 171
    series_cell_visualizations:
      social_performance.comment_count:
        is_active: false
      social_performance.post_engagement:
        is_active: true
    defaults_version: 1
    series_types: {}
    hidden_fields: [social_performance.post_impressions, social_performance.post_engagement]
    listen:
      Post Interval: social_performance.post_interval_selector
      Account Name: social_performance.account_name
    row: 2
    col: 4
    width: 4
    height: 4
  - title: Tweet Performance Details
    name: Tweet Performance Details
    model: social_analytics
    explore: social_performance
    type: looker_grid
    fields: [social_performance.created_date, social_performance.account_name, social_performance.post_id,
      social_performance.title_caption, social_performance.engagement_rate, social_performance.post_engagement,
      social_performance.post_impressions, social_performance.retweet_count, social_performance.post_favorite_count,
      social_performance.comment_count, social_performance.video_view_count]
    filters:
      social_performance.channel: Twitter
    sorts: [social_performance.created_date desc]
    limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      social_performance.engagement_rate: Engagement Rate
      social_performance.post_impressions: Impressions
      social_performance.retweet_count: Retweets
      social_performance.post_favorite_count: Favorites
      social_performance.comment_count: Comments
      social_performance.created_date: Created Date
      social_performance.account_name: Account
      social_performance.post_id: Post ID
      social_performance.title_caption: Message
      social_performance.video_view_count: Video Views
      social_performance.post_engagement: Engagements
    series_cell_visualizations:
      social_performance.engagement_rate:
        is_active: false
      social_performance.post_impressions:
        is_active: true
    series_types: {}
    defaults_version: 1
    hidden_fields: [social_performance.post_id]
    listen:
      Account Name: social_performance.account_name
    row: 6
    col: 0
    width: 22
    height: 10
  filters:
  - name: Post Interval
    title: Post Interval
    type: field_filter
    default_value: '10'
    allow_multiple_values: true
    required: false
    model: social_analytics
    explore: social_performance
    listens_to_filters: []
    field: social_performance.post_interval_selector
  - name: Account Name
    title: Account Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: social_analytics
    explore: social_performance
    listens_to_filters: []
    field: social_performance.account_name
