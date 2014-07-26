TestNew::Application.routes.draw do
  # get "home/index"
  root to: 'ringtones#index'

  # get '', to: 'ringtones#index', as: :bbb
  resource :account, :controller => 'users'
  resources :users 
  resource :user_session
  resources :password_resets

  # devise_for :users
  resources :ringtones do
    member do
      post "updatetaglist"
      get "taglist"
    end
    collection do 
      get 'tagcloud'
      post "multiupload"
      get "sidebarform"
      get :autocomplete_tag_name
      get "forpage"
      # get :autocomplete_ringtone_tag_list
      # get :autocomplete_ringtone_name
      # get "multiupload"
    end
  end

  namespace :demo do 
    # root :to => 'demo#index'
    get 'timeline', to: "allpage#timeline"



  end

  get 'tags/:tag', to: 'ringtones#index', as: :tag

  get 'api', to:"ringtones#api"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
