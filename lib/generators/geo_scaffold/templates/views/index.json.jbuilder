json.type "FeatureCollection"
json.features @<%= plural_table_name %> do |spot|
  json.type "Feature"
  json.properties do
    json.title <%= singular_table_name %>.name
    json.description "<a href=#{<%= singular_table_name %>_url(<%= singular_table_name %>)}>#{<%= singular_table_name %>.name}</a>"
  end
  json.geometry do
    json.type "Point"
    json.coordinates [<%= singular_table_name %>.lng, <%= singular_table_name %>.lat]
  end
end
