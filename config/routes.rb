# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'stations#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :bikes
  resources :trips
  resources :stations

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :stations
      patch  '/catch_bike' => 'bikes#catch'
      patch  '/give_back_bike' => 'bikes#give_back'
      post   '/sign_in'  => 'sessions#create'
      delete '/sign_out' => 'sessions#destroy'
    end
  end
end
