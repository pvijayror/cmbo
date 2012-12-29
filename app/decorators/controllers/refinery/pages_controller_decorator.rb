Refinery::PagesController.class_eval do

    before_filter :find_all_bios
    before_filter :find_all_posts


    protected

    def find_all_bios
      @bios = ::Refinery::Page.where(:parent_id => 15)
    end

    def find_all_posts
      @posts = Refinery::Blog::Post.all
    end


end