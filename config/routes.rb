Rails.application.routes.draw do
  
  # Example of Restful Routing

=begin
get "/posts" => "posts#index"
get "/posts/:id" => "posts#show"
get "/posts/new" => "posts#new"
post "/posts" => "posts#create"  # usually a submitted form
get "/posts/:id/edit" => "posts#edit"
put "/posts/:id" => "posts#update" # usually a submitted form
delete "/posts/:id" => "posts#destroy"

GET all the posts (aka "index" the posts)
GET just one specific post (aka "show" that post)
GET the page that lets you create a new post (aka view the "new" post page)
POST the data you just filled out for a new post back to the server so it can create that post (aka "create" the post)
GET the page that lets you edit an existing post (aka view the "edit" post page)
PUT the data you just filled out to edit the post back to the server so it can actually perform the update (aka "update" the post)
DELETE one specific post by sending a delete request to the server (aka "destroy" the post)
The highlighted words correspond to standard Rails controller actions!

=end

  
  root 'items#index'
  resources :items
  resources :people

  # get "/items" => "items#index" #done
 
  # get "/items/new" => "items#new" 
  # post "/items" => "items#create"
  # get "/items/:id" => "items#show" #done
  # get "/items/:id/edit" => "items#edit"
  # put "/items/:id" => "items#update"
  # delete "/items/:id" => "items#destroy"



  #this is the rails way of specifying the root of the website
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
