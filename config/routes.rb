Rails.application.routes.draw do
  
  match "/application.manifest" => Rails::Offline, via: [:get]

=begin
  offline = Rack::Offline.configure :cache_interval => 1 do
    #cache "images/masthead.png"
    cache ActionController::Base.helpers.asset_path("application.js")
    #cache ActionController::Base.helpers.asset_path("jquery.js")
    #cache ActionController::Base.helpers.asset_path("jquery_ujs.js")
    cache ActionController::Base.helpers.asset_path("jquery.tmpl.min.js")
    cache ActionController::Base.helpers.asset_path("jquery.offline.js")
    cache ActionController::Base.helpers.asset_path("json.js")
    cache ActionController::Base.helpers.asset_path("custom.js")
    cache ActionController::Base.helpers.asset_path("validate.js")
    cache ActionController::Base.helpers.asset_path("application.css")
    cache ActionController::Base.helpers.asset_path("style.css")
    cache ActionController::Base.helpers.asset_path("custom.css")
    
    public_path = Rails.public_path
    Dir[public_path.join("stylesheets/*.css")].each do |file|
      cache file.relative_path_from(public_path)
    end
    
    cache "/images/sb1.jpg"
    cache "/stylesheets/buildings.css"
    cache "/javascripts/buildings.js"
    
    #cache ActionController::Base.helpers.asset_path("buildings.css")
    #cache ActionController::Base.helpers.asset_path("floors.css")
    #cache ActionController::Base.helpers.asset_path("layouts.css")
    #cache ActionController::Base.helpers.asset_path("buildings.js")
    #cache ActionController::Base.helpers.asset_path("floors.js")
    #cache ActionController::Base.helpers.asset_path("layouts.js")
    #cache ActionController::Base.helpers.asset_path("navigator.js")
    network "/"
  end
  get "/application.manifest" => offline
=end
  
  get 'navigator/index'
  
  resources :layouts

  resources :floors

  resources :buildings

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
