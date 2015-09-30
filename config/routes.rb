Rails.application.routes.draw do
  root 'home#index'

  get "/contact",  to: "home#contact"
  get "/partners",  to: "home#partners"

  get '/admin/dashboard', to: 'admin/dashboard#index'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: "logout"

  resources :locations
  resources :numbers

  post 'notifications/twilio' => 'notifications#twilio'
end
