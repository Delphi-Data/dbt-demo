with source as (

    select * from {{ source('nycsub_public', 'station_entrances') }}

),

renamed as (

    select
        division,
        line,
        station_name,
        station_lat,
        station_lon,
        route_1,
        route_2,
        route_3,
        route_4,
        route_5,
        route_6,
        route_7,
        route_8,
        route_9,
        route_10,
        route_11,
        entrance_type,
        staff,
        staff_hours,
        ada_notes,
        free_crossover,
        north_south_street,
        east_west_street,
        corner,
        entrance_lat,
        entrance_lon,
        entry,
        exit_only,
        vending,
        ada_compliant,
        station_geom,
        entrance_geom

    from source

)

select * from renamed
