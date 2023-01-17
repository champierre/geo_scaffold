json.type "FeatureCollection"
json.features @<%= plural_table_name %> do |spot|
  json.type "Feature"
  json.properties do
    json.title <%= singular_table_name %>.name
    json.description marker_content(<%= singular_table_name %>)
  end
  json.geometry do
    json.type "Point"
    json.coordinates [<%= singular_table_name %>.lng, <%= singular_table_name %>.lat]
  end
end
