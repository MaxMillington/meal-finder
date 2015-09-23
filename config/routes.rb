Rails.application.routes.draw do
  root 'home#index'

  get "/contact",  to: "home#contact"
  get "/partners",  to: "home#partners"

  resources :locations
  resources :numbers
end
