Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get '/signup', to:'users#new'
  get 'sessions/new'


  resources :users do
    member do
      get '/password_reset', to: 'password_resets#new'
      post '/password_reset', to: 'password_resets#create'
      get '/suit', to: 'hopes#suit'
      get '/shirt', to: 'hopes#shirt'
      get '/tie', to: 'hopes#tie'
    end
  end


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #結果ページ
  get '/result_suit', to: 'results#result_suit'
  get '/result_shirt', to: 'results#result_shirt'
  get '/result_tie', to: 'results#result_tie'

  get '/select_suit', to: 'hopes#select_suit'
end
