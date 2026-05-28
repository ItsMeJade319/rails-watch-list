Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :lists, only: [ :create, :index, :show, :new, :destroy ] do
    resources :bookmarks, only: [ :create, :new, :destroy ]
  end
end
