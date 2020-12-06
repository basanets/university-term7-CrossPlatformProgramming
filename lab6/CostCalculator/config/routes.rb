Rails.application.routes.draw do
  resources :products

  post 'products/calculate_price' => 'products#calculate_price', :as => :calculate_price
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
