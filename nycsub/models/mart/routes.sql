with source as (

    select * from {{ source('nycsub_public', 'routes') }}

),

renamed as (

    select
        route_id,
        route_short_name,
        route_long_name,
        route_describe,
        route_type

    from source

)

select * from renamed