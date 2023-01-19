require 'generators/geo_scaffold/generator_helpers'

module GeoScaffold
  module Generators
    class ScaffoldGenerator < Rails::Generators::NamedBase
      include Rails::Generators::ResourceHelpers
      include GeoScaffold::Generators::GeneratorHelpers

      source_root File.expand_path('../templates', __FILE__)

      class_option :orm, banner: "NAME", type: :string, required: true,
        desc: "ORM to generate the controller for"

      argument :attributes, type: :array, default: [], banner: "field:type field:type"

      hook_for :resource_route, in: :rails do |resource_route|
        invoke resource_route
      end

      hook_for :orm, as: :model

      desc "Generates controller, controller_spec and views for the model with the given NAME."

      def copy_controller_and_spec_files
        template "controller.rb", File.join("app/controllers", "#{controller_file_name}_controller.rb")
      end

      def copy_view_files
        directory_path = File.join("app/views", controller_file_path)
        empty_directory directory_path

        view_files.each do |file_name|
          template "views/#{file_name}.html.erb", File.join(directory_path, "#{file_name}.html.erb")
        end

        template "views/partial.html.erb", File.join(directory_path, "_#{singular_table_name}.html.erb")
        template "views/index.json.jbuilder", File.join(directory_path, "index.json.jbuilder")
      end

      def copy_helper_files
        template "helpers/helper.rb", File.join("app/helpers", "#{controller_file_name}_helper.rb")
      end

      protected
      # def model_columns_for_attributes
      #   class_name.constantize.columns.reject do |column|
      #     column.name.to_s =~ /^(id|created_at|updated_at)$/
      #   end
      # end
    
      # def attributes
      #   model_columns_for_attributes.map do |column|
      #     Rails::Generators::GeneratedAttribute.new(column.name.to_s, column.type.to_s)
      #   end
      # end
    end
  end
end
