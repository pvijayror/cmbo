module Refinery
  module Directories
    class DirectoriesController < ::ApplicationController

      before_filter :find_all_directories
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @directory in the line below:
        present(@page)
      end

      def show
        @directory = Directory.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @directory in the line below:
        present(@page)
      end

    protected

      def find_all_directories
        @directories = Directory.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/directories").first
      end

    end
  end
end
