# The name of this view in Looker is "Ds1"
view: ds1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsdstdoct13.ds1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account" in Explore.

  dimension: account {
    type: number
    sql: ${TABLE}.account ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_account {
    type: sum
    sql: ${account} ;;
  }

  measure: average_account {
    type: average
    sql: ${account} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: c_start {
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
    sql: ${TABLE}.c_startTime ;;
  }

  dimension: pfk1 {
    type: string
    sql: ${TABLE}.pfk1 ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.pk ;;
  }

  dimension: sfk2 {
    type: string
    sql: ${TABLE}.sfk2 ;;
  }

  dimension: some_dimension_nammavrge {
    type: number
    sql: ${TABLE}.some_dimension_nammavrge ;;
  }

  dimension: some_dimension_nimmavrge {
    type: number
    sql: ${TABLE}.some_dimension_nimmavrge ;;
  }

  dimension: some_dimesion_devrge {
    type: number
    sql: ${TABLE}.some_dimesion_devrge ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
