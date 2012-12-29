module Refinery
  module Directories
    module Admin
      class DirectoriesController < ::Refinery::AdminController

        crudify :'refinery/directories/directory',
                :title_attribute => 'prefix', :xhr_paging => true

      end
    end
  end
end
