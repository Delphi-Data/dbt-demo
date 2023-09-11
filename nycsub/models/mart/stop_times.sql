with source as (

    select * from {{ source('nycsub_public', 'stop_times') }}

),

renamed as (

    select
        trip_id,
        arrival_time,
        departure_time,
        stop_id,
        stop_sequence,
        stop_headsign,
        pickup_type,
        dropoff_type,
        shape_dist_traveled

    from source

)

select * from renamed