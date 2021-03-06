Rails.application.routes.draw do
  resources :authors
  devise_for :users
  resources :users

  get '/books_by_author', to: 'authors#books', as: 'books_by_author'

  get 'excerpts/index'
  get 'excerpts/show'

  get 'chapters/index'
  get 'book/:book_number/chapters/:chapter_number/read', to: 'chapters#read', as: 'chapter_read'
  get 'book/:book_number/chapters/:chapter_number/chapter_only', to: 'chapters#chapter_only', as: 'chapter_only'

  get 'excerpts/:id/tags', to: 'excerpts#tags', as: 'excerpt_tags'
  get 'excerpts/:id/note', to: 'excerpts#note', as: 'excerpt_note'
  get 'excerpts/notes', to: 'excerpts#notes', as: 'excerpt_notes'
  post 'excerpts/:id/delete', to: 'excerpts#delete', as: 'excerpt_delete'

  get 'tags/:id/show', to: 'tags#show', as: 'tags_show'
  get 'tags/index'
  post 'tags/assign', to: 'tags#assign', as: 'tags_assign'
  get 'tags/:id/delete', to: 'tags#delete', as: 'tag_delete'

  get 'verses', to: 'verses#search', as: 'verse_search'
  get 'word-cloud', to: 'verses#word_cloud', as: 'word_cloud'

  get 'versions', to: 'versions#choose_version', as: 'choose_version'
  post 'set_version', to: 'versions#set_version', as: 'set_version'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'chapters#index'

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
