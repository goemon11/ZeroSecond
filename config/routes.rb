Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end
  root to: 'memos#index'
  resources :memos
end
