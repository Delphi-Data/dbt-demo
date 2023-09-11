{{ codegen.generate_source(
    schema_name='new_york_subway',
    generate_columns=true,
    include_descriptions=true,
    include_data_types=true,
    name='nycsub_public',
    exclude='subway_ridership_2013_present',
    include_schema=true) }}