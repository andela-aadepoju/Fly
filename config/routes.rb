Rails.application.routes.draw do

 # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  post 'flight/search', to: 'flights#search', as: 'search'
  post 'flight_search', to: 'flights#flight_search', as: 'flight_search'
  # You can have the root of your site routed with "root"
  root 'pages#index'
  resources :flights
  resources :bookings
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

 get 'auth/:provider/callback', to: "sessions#create"
 delete 'sign_out', to: "sessions#destroy", as: "sign_out"

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
