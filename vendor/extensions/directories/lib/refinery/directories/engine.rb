module Refinery
  module Directories
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Directories

      engine_name :refinery_directories

      initializer "register refinerycms_directories plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "directories"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.directories_admin_directories_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/directories/directory',
            :title => 'prefix'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Directories)
      end
    end
  end
end
