# frozen_string_literal: true

Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :bikes
  resources :trips
  resources :stations

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :stations
      patch 'bikes/catch'
      patch 'bikes/give_back'
    end
  end
end
