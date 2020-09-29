Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get '/signup', to:'users#new'
  get 'sessions/new'

  resources :users do
    member do
      get '/password_reset', to: 'password_resets#new'
      post '/password_reset', to: 'password_resets#create'
      get '/select_suit', to: 'hopes#select_suit'
      post '/select_suit', to: 'hopes#create'
      get '/select_shirt', to: 'hopes_shirt#select_shirt'
      post '/select_shirt', to: 'hopes_shirt#create'
      get '/select_tie', to: 'hopes_tie#select_tie'
      post '/select_tie', to: 'hopes_tie#create'
      # get '/suit', to: 'hopes#suit'
      # get '/shirt', to: 'hopes#shirt'
      # get '/tie', to: 'hopes#tie'
      get '/result_suit', to: 'results#result_suit'
      get '/result_shirt', to: 'results#result_shirt'
      get '/result_tie', to: 'results#result_tie'
    end
  end

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
