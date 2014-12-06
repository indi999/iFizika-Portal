FizikaPortal::Application.routes.draw do

  # User
  devise_for :users
  resources :users, only: [:index] # dodato zbog mogucnosti pregleda svih registrovanih korisnika
  root 'products#pocetna'

 # Products
  get "products/pocetna"
  get "products/onama"
  get "products/pretraga"
  get "products/kontakt"
  resources :products

  # kontakt
  resources :kontakts

  # site
  get "site/index"
  get "site/zabava"
  get "site/naucnici"

  # Zadaci
  resources :zadacis

  # Blog

  #rules-pretraga
   get "rules/index"

  # Upload
   get "upload/index"
   post "upload/uploadFile"
   get "upload/public/data"
   get "upload/pretraga"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#pretraga'

  # Example of regular route:
  #   new 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   new 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       new 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       new 'sold'
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
  #       new 'recent', on: :collection
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
