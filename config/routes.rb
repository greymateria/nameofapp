Rails.application.routes.draw do

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'} 
                      #overwrites default /users/sign_in to /login and /users/sign_out to /logout 

  resources :products do
    resources :comments
  end
  resources :users

	#  get 'static_pages/index' - root is the home page
  root 'static_pages#index'

  get 'static_pages/about'

  get 'static_pages/contact'

  post 'static_pages/thank_you'

  # added in 4.3 for app/views/orders
  resources :orders, only: [:index, :show, :create, :destroy] 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
 