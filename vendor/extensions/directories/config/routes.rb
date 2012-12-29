Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :directories do
    resources :directories, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :directories, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :directories, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
