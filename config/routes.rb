Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root 'static_pages#home'
  get 'static_pages/home'
  get '/signup', to:'users#new'
  get 'sessions/new'
  resources :users
  resources :password_resets,     only: [:new, :create, :edit, :update]

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #アイテム検索用ルーティング
  get '/suit', to: 'hopes#suit'
  get '/shirt', to: 'hopes#shirt'
  get '/tie', to: 'hopes#tie'

  get '/select_suit', to: 'hopes#select_suit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root'application#hello'
end
