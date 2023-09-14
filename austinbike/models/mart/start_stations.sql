select
    station_id as start_station_id,
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
from {{ ref('bikeshare_stations') }}