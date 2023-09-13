with source as (

    select * from {{ source('austin_bike', 'bikeshare_stations') }}

),

renamed as (

    select
        station_id,
        name,
        status,
        address,
        alternate_name,
        city_asset_number,
        property_type,
        number_of_docks,
        power_type,
        footprint_length,
        footprint_width,
        notes,
        council_district,
        modified_date

    from source

)

select * from renamed