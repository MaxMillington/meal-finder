Rails.application.routes.draw do
  root 'home#index'

  get "numbers/new",  to: "numbers#new"
end
