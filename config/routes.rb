Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users
  get 'animals/new'
  get 'pages/home'
  get 'animals/details'

  post 'animals' => 'animals#create'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
