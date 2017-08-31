Rails.application.routes.draw do
  get 'sessions/new'

  resources :leads
  resources :users
  resources :sessions
	get 'signup', to: 'users#new', as: 'signup'
	get 'login', to: 'sessions#new', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'
  root 'users#index'
  put 'update_manager', to: 'users#update_manager', as: 'update_manager'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
