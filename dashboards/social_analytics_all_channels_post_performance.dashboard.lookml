- dashboard: social_analytics_all_channels_post_performance
  title: 'Social Analytics: All Channels Post Performance'
  layout: newspaper
  elements:
  - name: 'All Social Channels: Post Performance'
    title: 'All Social Channels: Post Performance'
    model: social_analytics
    explore: social_performance
    type: looker_grid
    fields: [social_performance.created_date, social_performance.post_id, social_performance.channel,
      social_performance.account_name, social_performance.media_type, social_performance.title_caption,
      social_performance.engagement_rate, social_performance.post_engagement, social_performance.post_impressions,
      social_performance.post_reach, social_performance.comment_count, social_performance.share_count,
      social_performance.like_count, social_performance.saved_count]
    filters:
      social_performance.post_id: "-NULL"
    sorts: [social_performance.created_date desc]
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
      social_performance.created_date: Created Date
      social_performance.channel: Channel
      social_performance.account_name: Account
      social_performance.media_type: Media Type
      social_performance.title_caption: Message
      social_performance.post_engagement: Engagement
      social_performance.post_impressions: Impressions
      social_performance.post_reach: Reach
      social_performance.comment_count: Comments
      social_performance.engagement_rate: Engagement Rate
      social_performance.share_count: Shares (FB)
      social_performance.like_count: Likes (FB, IG)
      social_performance.saved_count: Saved (IG)
    series_column_widths:
      social_performance.engagement: 98
    series_cell_visualizations:
      social_performance.engagement:
        is_active: true
    hidden_fields: [social_performance.post_id]
    defaults_version: 1
    listen:
      Channel: social_performance.channel
      Created Date: social_performance.created_date
      Account Name: social_performance.account_name
    row: 0
    col: 0
    width: 24
    height: 13
  filters:
  - name: Channel
    title: Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: social_analytics
    explore: social_performance
    listens_to_filters: []
    field: social_performance.channel
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: 14 days
    allow_multiple_values: true
    required: false
    model: social_analytics
    explore: social_performance
    listens_to_filters: []
    field: social_performance.created_date
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
