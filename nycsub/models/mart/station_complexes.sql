with source as (

    select * from {{ source('nycsub_public', 'station_complexes') }}

),

renamed as (

    select
        complex_id,
        complex_name

    from source

)

select * from renamed