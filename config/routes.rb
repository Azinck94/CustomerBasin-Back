# frozen_string_literal: true
Rails.application.routes.draw do
  resources :customers
  resources :posts
  resources :examples, except: [:new, :edit]
  get '/user-ballers/:id' => 'users#userballers'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :customers, only: [:index, :show, :destroy, :create, :update]
end
