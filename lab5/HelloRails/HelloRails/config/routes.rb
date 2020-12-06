Rails.application.routes.draw do
  get 'hello/index'
  root 'hello#index'
  #resource :hello
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
