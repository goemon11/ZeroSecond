Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end
  root to: 'memos#index'
  resources :memos do 
    post :confirm, action: :confirm_new, on: :new
  end
  resources :memos
end
