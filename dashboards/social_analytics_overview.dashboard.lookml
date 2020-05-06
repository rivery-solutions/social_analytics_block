- dashboard: social_analytics_overview
  title: 'Social Analytics: Overview'
  layout: newspaper
  elements:
  - name: 'Facebook: Impressions, Reach, and Engaged Users'
    type: text
    title_text: 'Facebook: Impressions, Reach, and Engaged Users'
    row: 12
    col: 0
    width: 24
    height: 2
  - name: 'Instagram: Impressions, Reach, and Post Count'
    type: text
    title_text: 'Instagram: Impressions, Reach, and Post Count'
    row: 24
    col: 0
    width: 24
    height: 2
  - name: 'Social Channel Breakdown: Change in Impressions, Reach, and # of Posts'
    type: text
    title_text: 'Social Channel Breakdown: Change in Impressions, Reach, and # of
      Posts'
    subtitle_text: Current 30 Days vs Previous 30 Days
    row: 4
    col: 0
    width: 24
    height: 2
  - name: Facebook Fan Count
    title: Facebook Fan Count
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.page_fan_count_daily, social_performance.timeframe_day_number,
      social_performance.date_date]
    filters: {}
    sorts: [social_performance.page_fan_count_daily desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: percent_change, expression: "${social_performance.page_fan_count_daily}/offset(${social_performance.page_fan_count_daily},${social_performance.timeframe_day_number})-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 0
    col: 0
    width: 8
    height: 4
  - name: Instagram Follower Count
    title: Instagram Follower Count
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.total_followers_daily, social_performance.date_date,
      social_performance.timeframe_day_number]
    filters:
      social_performance.channel: Instagram
    sorts: [social_performance.date_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: percent_change, expression: "${social_performance.total_followers_daily}/offset(${social_performance.total_followers_daily},${social_performance.timeframe_day_number})-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 0
    col: 8
    width: 8
    height: 4
  - name: Twitter Follower Count
    title: Twitter Follower Count
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.date_date, social_performance.total_followers_daily,
      social_performance.timeframe_day_number]
    filters:
      social_performance.channel: Twitter
    sorts: [social_performance.date_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: percent_change, expression: "${social_performance.total_followers_daily}/offset(${social_performance.total_followers_daily},${social_performance.timeframe_day_number})-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 0
    col: 16
    width: 8
    height: 4
  - name: "# of Posts"
    title: "# of Posts"
    model: social_analytics
    explore: social_performance
    type: looker_column
    fields: [social_performance.channel, social_performance.count_distinct_posts_monthly_change]
    pivots: [social_performance.channel]
    sorts: [social_performance.count_distinct_posts_monthly_change desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    series_types: {}
    series_labels:
      social_performance.favorite_count: Favorites
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 6
    col: 16
    width: 8
    height: 6
  - name: Impressions
    title: Impressions
    model: social_analytics
    explore: social_performance
    type: looker_column
    fields: [social_performance.page_impressions_percent_change, social_performance.channel]
    pivots: [social_performance.channel]
    filters:
      social_performance.channel: "-Twitter"
    sorts: [social_performance.channel]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    series_types: {}
    series_labels:
      social_performance.page_impressions_instagram_monthly_change: Instagram
      social_performance.page_impressions_facebook_monthly_change: Facebook
      social_performance.impressions_twitter_monthly_change: Twitter
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 6
    col: 0
    width: 8
    height: 6
  - name: Reach
    title: Reach
    model: social_analytics
    explore: social_performance
    type: looker_column
    fields: [social_performance.page_reach_current_30, social_performance.page_reach_percent_change,
      social_performance.channel]
    pivots: [social_performance.channel]
    filters:
      social_performance.channel: "-Twitter"
    sorts: [social_performance.channel]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    series_types: {}
    series_labels:
      social_performance.page_impressions_instagram_monthly_change: Instagram
      social_performance.page_impressions_facebook_monthly_change: Facebook
      social_performance.impressions_twitter_monthly_change: Twitter
      social_performance.page_reach_facebook_monthly_change: Facebook
      social_performance.page_reach_instagram_monthly_change: Instagram
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [social_performance.page_reach_current_30]
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 6
    col: 8
    width: 8
    height: 6
  - name: Facebook Avg Daily Impressions
    title: Facebook Avg Daily Impressions
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.page_impressions_avg, social_performance.timeframe]
    filters:
      social_performance.channel: Facebook
    sorts: [social_performance.timeframe desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: percent_change, expression: "${social_performance.page_impressions_avg}/offset(${social_performance.page_impressions_avg},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    comparison_label: vs Previous
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      social_performance.favorite_count: Favorites
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 14
    col: 0
    width: 8
    height: 4
  - name: Facebook Avg Daily Reach
    title: Facebook Avg Daily Reach
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.timeframe, social_performance.page_reach_avg]
    filters:
      social_performance.date_year: after 2020/01/01
      social_performance.channel: Facebook
    sorts: [social_performance.timeframe desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: percent_change, expression: "${social_performance.page_reach_avg}/offset(${social_performance.page_reach_avg},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    comparison_label: vs Previous
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      social_performance.favorite_count: Favorites
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 14
    col: 8
    width: 8
    height: 4
  - name: Facebook Avg Daily Engaged Users
    title: Facebook Avg Daily Engaged Users
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.page_engaged_users_avg, social_performance.timeframe]
    filters:
      social_performance.channel: Facebook
    sorts: [social_performance.timeframe desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: percent_change, expression: "${social_performance.page_engaged_users_avg}/offset(${social_performance.page_engaged_users_avg},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    comparison_label: vs Previous
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      social_performance.favorite_count: Favorites
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 14
    col: 16
    width: 8
    height: 4
  - name: Facebook Weekly Impressions and Reach
    title: Facebook Weekly Impressions and Reach
    model: social_analytics
    explore: social_performance
    type: looker_area
    fields: [social_performance.date_week, social_performance.page_reach_daily, social_performance.page_impressions_daily]
    fill_fields: [social_performance.date_week]
    filters:
      social_performance.channel: Facebook
    sorts: [social_performance.date_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    series_types: {}
    series_labels:
      social_performance.page_reach_daily: Reach
      social_performance.page_impressions_daily: Impressions
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Monthly Change
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 18
    col: 0
    width: 12
    height: 6
  - name: Facebook Weekly Engaged Users
    title: Facebook Weekly Engaged Users
    model: social_analytics
    explore: social_performance
    type: looker_area
    fields: [social_performance.date_week, social_performance.page_engaged_users_daily]
    fill_fields: [social_performance.date_week]
    filters:
      social_performance.date_year: after 2020/01/01
    sorts: [social_performance.date_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    series_types: {}
    series_labels:
      social_performance.favorite_count: Favorites
      social_performance.page_engaged_users_daily: Engaged Users
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 18
    col: 12
    width: 12
    height: 6
  - title: Instagram Avg Daily Impressions
    name: Instagram Avg Daily Impressions
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.page_impressions_avg, social_performance.timeframe]
    filters:
      social_performance.channel: Instagram
    sorts: [social_performance.timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: percent_change, expression: "${social_performance.page_impressions_avg}/offset(${social_performance.page_impressions_avg},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    comparison_label: vs Previous
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      social_performance.favorite_count: Favorites
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 26
    col: 0
    width: 8
    height: 4
  - title: Instagram Avg Daily Reach
    name: Instagram Avg Daily Reach
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.timeframe, social_performance.page_reach_avg]
    filters:
      social_performance.channel: Instagram
    sorts: [social_performance.timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: percent_change, expression: "${social_performance.page_reach_avg}/offset(${social_performance.page_reach_avg},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    comparison_label: vs Previous
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      social_performance.favorite_count: Favorites
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 26
    col: 8
    width: 8
    height: 4
  - name: Instagram Weekly Impressions and Reach
    title: Instagram Weekly Impressions and Reach
    model: social_analytics
    explore: social_performance
    type: looker_area
    fields: [social_performance.date_week, social_performance.page_reach_daily, social_performance.page_impressions_daily]
    fill_fields: [social_performance.date_week]
    filters:
      social_performance.channel: Instagram
    sorts: [social_performance.date_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    series_types: {}
    series_labels:
      social_performance.page_impressions_daily: Impressions
      social_performance.page_reach_daily: Reach
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Monthly Change
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 30
    col: 0
    width: 12
    height: 6
  - name: Instagram Weekly Posts
    title: Instagram Weekly Posts
    model: social_analytics
    explore: social_performance
    type: looker_area
    fields: [social_performance.count_distinct_posts, social_performance.created_week]
    fill_fields: [social_performance.created_week]
    filters:
      social_performance.created_month: 6 months
      social_performance.channel: Instagram
    sorts: [social_performance.created_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    series_types: {}
    series_labels:
      social_performance.favorite_count: Favorites
    defaults_version: 1
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 30
    col: 12
    width: 12
    height: 6
  - name: Instagram Last 10 Posts Engagement
    title: Instagram Last 10 Posts Engagement
    model: social_analytics
    explore: social_performance
    type: single_value
    fields: [social_performance.created_date, social_performance.post_interval, social_performance.post_id,
      social_performance.post_engagement]
    filters:
      social_performance.channel: Instagram
      social_performance.post_interval_selector: '10'
      social_performance.created_date: NOT NULL
    sorts: [social_performance.created_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: sum_latest_10, label: sum_latest_10, expression: "sum(offset_list(${social_performance.post_engagement},\n\
          0,${social_performance.post_interval}))", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: percent_change,
        label: percent_change, expression: "sum(offset_list(${social_performance.post_engagement},\n\
          0,${social_performance.post_interval}))\n  /\nsum(offset_list(${social_performance.post_engagement},\n\
          ${social_performance.post_interval},${social_performance.post_interval}))\n\
          -1", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [social_performance.post_interval, social_performance.post_engagement]
    note_state: collapsed
    note_display: hover
    note_text: This compares the total engagement from the last 10 posts to the previous
      10 posts.
    listen:
      Timeframe: social_performance.timeframe_filter
      Account Name: social_performance.account_name
    row: 26
    col: 16
    width: 8
    height: 4
  filters:
  - name: Timeframe
    title: Timeframe
    type: field_filter
    default_value: Week
    allow_multiple_values: true
    required: false
    model: social_analytics
    explore: social_performance
    listens_to_filters: []
    field: social_performance.timeframe_filter
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
