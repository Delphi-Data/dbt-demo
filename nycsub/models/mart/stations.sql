with source as (

    select * from {{ source('nycsub_public', 'stations') }}

),

renamed as (

    select
        station_id,
        complex_id,
        gtfs_stop_id,
        division,
        line,
        station_name,
        borough_name,
        daytime_routes,
        structure,
        north_direction_label,
        south_direction_label,
        station_lat,
        station_lon,
        station_geom

    from source

)

select * from renamed