Rails.application.routes.draw do
	root 'dashboard#show'

	get 'login' => 'sessions#new'
	get 'logout' => 'sessions#destroy'

	resources :sessions, only: [:create]
	resources :users, only: [:new, :create]
end
