# The name of this view in Looker is "Vs"
view: vs {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsdbtd161222.vs`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Double Field 0" in Explore.

  dimension: double_field_0 {
    type: number
    sql: ${TABLE}.double_field_0 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_double_field_0 {
    type: sum
    sql: ${double_field_0} ;;
  }

  measure: average_double_field_0 {
    type: average
    sql: ${double_field_0} ;;
  }

  dimension: double_field_1 {
    type: number
    sql: ${TABLE}.double_field_1 ;;
  }

  dimension: double_field_2 {
    type: number
    sql: ${TABLE}.double_field_2 ;;
  }

  dimension: double_field_3 {
    type: number
    sql: ${TABLE}.double_field_3 ;;
  }

  dimension: s {

    type: location
    sql_latitude: ${TABLE}.double_field_0   ;;
    sql_longitude:  ${TABLE}.double_field_1  ;;


  }
  dimension: d {

    type: location
    sql_latitude: ${TABLE}.double_field_2   ;;
    sql_longitude:  ${TABLE}.double_field_3  ;;


  }
  dimension: distance_to_delivery_add {



    type: distance
    start_location_field: s
    end_location_field: d
    units: kilometers


  }

  measure: count {
    type: count
    drill_fields: []
  }
}
