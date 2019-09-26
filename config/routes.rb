# frozen_string_literal: true

Rails.application.routes.draw do
  resources :bikes
  resources :trips
  resources :stations

  namespace :api do
    namespace :v1 do
      resources :stations
    end
  end
end
