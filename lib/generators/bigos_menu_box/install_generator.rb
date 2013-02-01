module BigosMenuBox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a BigosMenuBox initializer."
      def copy_initializer
        template "bigos_menu_box.rb", "config/initializers/bigos_menu_box.rb"
      end

      def include_routes
        route 'mount BigosMenuBox::Engine => "/bigos_menu_box"'
      end

      def create_settings
        im = BigosApp::InstalledModule.find_or_create_by_name(BigosMenuBox.name)
        im.page_element = BigosApp::BigosMenuBoxElement.name
        im.save
      end

    end
  end
end
