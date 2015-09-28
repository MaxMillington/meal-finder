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

  # post "twilio/connect_customer" => "twilio#connect_customer"
  post 'notifications/monday' => 'notifications#monday'
  post 'notifications/tuesday' => 'notifications#tuesday'
  post 'notifications/wednesday' => 'notifications#wednesday'
  post 'notifications/thursday' => 'notifications#thursday'
  post 'notifications/friday' => 'notifications#friday'
  post 'notifications/saturday' => 'notifications#saturday'
  post 'notifications/sunday' => 'notifications#sunday'
end
