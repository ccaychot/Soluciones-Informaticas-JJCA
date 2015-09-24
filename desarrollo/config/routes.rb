Rails.application.routes.draw do
  
  resources :tareas
  resources :registros
  
  root 'registro#index'
  get 'registro/edit'
  get 'registro/index'
  get 'registro/new'

    

  #root 'tareas#new'
  get 'tareas/index'
  get 'tareas/new'
  get 'tareas/create'
  get 'tareas/show'
  get 'tareas/edit'
  get 'tareas/update'
  get 'tareas/destroy'
  

  
# put "tareas/finalizar"
#  match 'tareas/finalizar/:id' => 'tareas#finalizar'
  
 #root :to => 'tareas#index'
 
#http://fernando-gaitan.com.ar/ruby-on-rails-parte-14-crud-y-rest/



  get 'administracion/index'
  get 'home/index'
  get 'reserva/index'
  get 'check_list/index'
  get 'parametros/index'
  get 'registro/index'


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
