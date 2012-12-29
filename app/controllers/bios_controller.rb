class BiosController < ApplicationController
  
  def index
    @bios = ::Refinery::Page.where(:parent_id => 15)
  end

  def show
    @bio = ::Refinery::Page.find(params[:id])
  end

end
