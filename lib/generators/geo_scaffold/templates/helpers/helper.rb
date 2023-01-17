module <%= controller_class_name %>Helper
  def marker_content(<%= singular_table_name %>)
    <%= singular_table_name %>.attributes.except("id", "created_at", "updated_at", "lat", "lng").map do |key, value|
      "<strong>#{key}</strong> #{key == 'name' ? link_to(value, <%= singular_table_name %>) : value }<br />"
    end.join.html_safe
  end
end