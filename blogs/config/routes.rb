Rails.application.routes.draw do

  root 'authors#index'

  resources :authors do
    resources :posts, shallow: true
  end


=begin
 Prefix Verb   URI Pattern                             Controller#Action
           root GET    /                                       authors#index
   author_posts GET    /authors/:author_id/posts(.:format)     posts#index
                POST   /authors/:author_id/posts(.:format)     posts#create
new_author_post GET    /authors/:author_id/posts/new(.:format) posts#new
      edit_post GET    /posts/:id/edit(.:format)               posts#edit
           post GET    /posts/:id(.:format)                    posts#show
                PATCH  /posts/:id(.:format)                    posts#update
                PUT    /posts/:id(.:format)                    posts#update
                DELETE /posts/:id(.:format)                    posts#destroy
        authors GET    /authors(.:format)                      authors#index
                POST   /authors(.:format)                      authors#create
     new_author GET    /authors/new(.:format)                  authors#new
    edit_author GET    /authors/:id/edit(.:format)             authors#edit
         author GET    /authors/:id(.:format)                  authors#show
                PATCH  /authors/:id(.:format)                  authors#update
                PUT    /authors/:id(.:format)                  authors#update
                DELETE /authors/:id(.:format)                  authors#destroy
=end


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
