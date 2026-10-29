Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "dashboard#index"

  resources :dashboard do
    collection do
      get :filter_by
    end
  end
end
