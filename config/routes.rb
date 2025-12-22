Rails.application.routes.draw do
  root "dashboard#index"
  # Optional named route for dashboard (root already points here)
  get "dashboard", to: "dashboard#index", as: :dashboard

  devise_for :users

  # Concise, RESTful routes
  resources :jobs, only: %i[index show]
  resources :resumes, only: %i[index show new create edit update]

  # Health check for load balancers / uptime monitors
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA endpoints (uncomment to enable)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
