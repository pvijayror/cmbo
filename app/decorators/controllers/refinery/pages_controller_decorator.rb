Refinery::PagesController.class_eval do

    before_filter :find_all_bios


    protected

    def find_all_bios
      @bios = ::Refinery::Page.where(:parent_id => 15)
    end


end