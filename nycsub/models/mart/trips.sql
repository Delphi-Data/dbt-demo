with source as (

    select * from {{ source('nycsub_public', 'trips') }}

),

renamed as (

    select
        route_id,
        service_id,
        trip_id,
        trip_headsign,
        direction_id,
        block_id,
        shape_id

    from source

)

select * from renamed