




Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'feed', to: 'feed#show'
  devise_for :users
  as :user do
    get "signin", to: 'devise/sessions#new'
    delete "signout", to: 'devise/sessions#destroy'
    get 'signup', to: 'devise/registrations#new'
  end

  resources :users, only: :show, param: :username do
    member do
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
  end

  resources :tweets
  root 'pages#home'
  get 'about', to: 'pages#about'

   devise_for :installs
  root 'pages#home'
    get 'about', to: 'pages#about'
    get 'contact_us', to: 'pages#contact_us'
    get 'tweets', to: 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end