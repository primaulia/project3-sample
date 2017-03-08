Rails.application.routes.draw do
  get 'tags/index'

  devise_for :users
  resources :ideas
  resources :tags

  get 'about' => 'static#about'

  root 'static#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
