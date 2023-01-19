module <%= controller_class_name %>Helper
  def marker_content(<%= singular_table_name %>)
    html = ""
<% attributes.reject {|attribute| attribute.password_digest? || ["lat", "lng"].include?(attribute.column_name)}.each do |attribute| -%>
<% if attribute.attachment? -%>

    # To use variant of image, you need to add 'image_processing' gem to your Gemfile."
    # html << "<strong><%= attribute.human_name %>:</strong> #{image_tag <%= singular_name %>.<%= attribute.column_name %>.variant(resize: "100x100^")}<br />" if <%= singular_name %>.<%= attribute.column_name %>.attached?
    html << "<strong><%= attribute.human_name %>:</strong> #{image_tag <%= singular_name %>.<%= attribute.column_name %>}<br />" if <%= singular_name %>.<%= attribute.column_name %>.attached?

<% else -%>
    html << "<strong><%= attribute.human_name %>:</strong> #{<%= singular_name %>.<%= attribute.column_name %>}<br />"
<% end -%>
<% end -%>
    return html.html_safe
  end
end
