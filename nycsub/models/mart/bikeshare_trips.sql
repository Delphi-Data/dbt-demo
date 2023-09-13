with source as (

    select * from {{ source('austin_bike', 'bikeshare_trips') }}

),

renamed as (

    select
        trip_id,
        subscriber_type,
        bike_id,
        bike_type,
        start_time,
        start_station_id,
        start_station_name,
        end_station_id,
        end_station_name,
        duration_minutes

    from source

)

select * from renamed