Rails.application.routes.draw do
  get 'trending/index'
  resources :infos
  resources :events

  root 'home#homepage'
  
  mount ActionCable.server => '/cable'

  resources :notifications

  resources :tools

  resources :tasks


  devise_for :users

  resources :users_profiles, only: [:edit, :update]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  get 'home/homepage'

  get '/about', to:'home#about'
  get '/myprofile', to:'users_profiles#show'

  get '/mylistings', to:'tasks#my_tasks'
  get '/mylistings1', to:'tools#my_tools'
 
  get '/search/results', to: 'search#results'

  get '/trendings', to: 'trending#index'

 

  get '/calendar', to: 'events#new'

  get 'message/index'

  get 'listings/mylistings'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
