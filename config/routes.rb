Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  get 'about' => 'home#about', as: 'about'
end
