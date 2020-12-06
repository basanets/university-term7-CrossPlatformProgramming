Rails.application.routes.draw do
  resources :communal_service_records
  root 'communal_service_records#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
