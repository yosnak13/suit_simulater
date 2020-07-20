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
  get '/suit', to: 'hopes#suit'
  get '/shirt', to: 'hopes#shirt'
  get '/tie', to: 'hopes#tie'

  #結果ページ
  get '/result_suit', to: 'results#result_suit'
  get '/result_shirt', to: 'results#result_shirt'
  get '/result_tie', to: 'results#result_tie'

  get '/select_suit', to: 'hopes#select_suit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root'application#hello'
end
