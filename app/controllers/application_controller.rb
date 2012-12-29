class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_children_items
  
  def load_children_items
    
    
  end


end
