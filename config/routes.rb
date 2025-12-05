# frozen_string_literal: true

Rails.application.routes.draw do
  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Main pages
  root "pages#home"

  # Rulebooks
  resources :rulebooks, only: [:index, :show] do
    member do
      get :download
    end
  end

  # Armies (Army Books)
  resources :armies, only: [:index, :show] do
    member do
      get :download
    end
  end

  # Army Builder
  resources :army_lists do
    member do
      post :add_unit
      delete :remove_unit
      patch :update_unit
      get :export_pdf
    end
  end

  # API for dynamic unit loading
  namespace :api do
    resources :units, only: [:index, :show]
    resources :armies, only: [:index] do
      resources :units, only: [:index]
    end
  end
end
