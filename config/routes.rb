Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get '/signup', to:'users#new'
  get 'sessions/new'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #アイテム検索用ルーティング
  get '/suit', to: 'static_pages#suit'
  get '/tie', to: 'static_pages#tie'
  get '/shirt', to: 'static_pages#shirt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root'application#hello'
end
