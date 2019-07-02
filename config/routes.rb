Rails.application.routes.draw do
  resources :microposts do
	 collection{ get 'test', to: 'microposts#test' }
	end
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root 'users#index'
end
