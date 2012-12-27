Refinery::PagesController.class_eval do

  before_filter :find_all_bios, only: [:bio]
  
  def bio
        @bios = Refinery::Page.where(view_template: :bio)
  end
  
  
    
    def find_all_bios      
      @bios = Refinery::Page.where(view_template: :bio)
    end
    
    protected :find_all_bios
end