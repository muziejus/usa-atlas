UsaAtlas::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  resources :chapters, only: [:index, :show] do
    resources :observations, only: :index
  end
  
  get 'books/the-42nd-parallel' => 'observations#the_42nd_parallel', as: :the_42nd_parallel
  get 'books/1919' => 'observations#nineteen_nineteen', as: :nineteen_nineteen
  get 'books/the-big-money' => 'observations#the_big_money', as: :the_big_money
  
  get 'books/the-42nd-parallel/chapters' => 'chapters#the_42nd_parallel', as: :the_42nd_parallel_chapters
  get 'books/1919/chapters' => 'chapters#nineteen_nineteen', as: :nineteen_nineteen_chapters
  get 'books/the-big-money/chapters' => 'chapters#the_big_money', as: :the_big_money_chapters
  
  get 'modes/newsreels' => 'chapters#newsreels', as: :newsreels_chapters
  get 'modes/narratives' => 'chapters#narratives', as: :narratives_chapters
  get 'modes/profiles' => 'chapters#profiles', as: :profiles_chapters
  get 'modes/the-camera-eyes' => 'chapters#camera_eyes', as: :camera_eyes_chapters

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :observations do
    get :autocomplete_place_name, :on => :collection
  end
  
  resources :places

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
