Refinery::PagesController.class_eval do

  
  def bios
   @bios = ::Refinery::Page.where(:parent_id => 15)
  end

  def bio
     @bio = ::Refinery::Page.find(params[:id])
  end
  

end