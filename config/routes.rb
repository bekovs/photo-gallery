Rails.application.routes.draw do
	
  root 'posts#index'
  get 'users/:id/show' => 'users#show', as: 'users_show'
  resources :posts do
  	resources :comments
  end

  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
