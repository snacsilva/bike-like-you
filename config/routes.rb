# frozen_string_literal: true

Rails.application.routes.draw do

  resources :bikes
  resources :trips
  resources :stations

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :stations
      patch 'bikes/catch'
      get 'bikes/give_back'
    end
  end
end
