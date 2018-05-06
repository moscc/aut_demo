Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:new, :create, :show]
    resources :comments, only: [:create]
end
