Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :users, controllers: {registrations: "registrations"} 

  get '/shortoners' => 'shortoners#index'
  
  get '/:short_url' => 'shortoners#show'

  get '/shortoners/new/new' => 'shortoners#new'
	
  post 'shortoners' => 'shortoners#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end