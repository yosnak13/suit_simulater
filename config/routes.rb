Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get '/signup', to:'users#new'
  get 'sessions/new'

  resources :users do
    member do
      get '/password_reset', to: 'password_resets#new'
      post '/password_reset', to: 'password_resets#create'
    end
  end

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #アイテム検索用ルーティング
  get '/suit', to: 'hopes#suit'
  get '/shirt', to: 'hopes#shirt'
  get '/tie', to: 'hopes#tie'

  get '/select_suit', to: 'hopes#select_suit'
end
