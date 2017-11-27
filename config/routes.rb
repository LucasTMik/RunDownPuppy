Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users
  get 'pages/new'
  get 'pages/home'

  post 'pages/new' => 'pages#create'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
