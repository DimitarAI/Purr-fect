Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :pets, only: %i[index show new create] do
    resources :bookings, only: %i[create]

  end
  resources :pets do
    collection do
      get :search
    end
  end


  get "dashboard", to: "bookings#index"
  # patch "accept", to: "bookings#accept"
  # patch "decline", to: "bookings#decline"

  resources :bookings, only: [:index] do
    member do
      patch :accept
      patch :decline
    end
  end


  # Defines the root path route ("/")
  # root "posts#index"
end
