module GeoScaffold
  module Generators
    # Some helpers for generating scaffolding
    module GeneratorHelpers
      attr_accessor :options, :attributes

      private
      def view_files
        %w(index new edit _form show)
      end
    end
  end
end
