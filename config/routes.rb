Rails.application.routes.draw do
  root 'home#index'

  get "numbers/new",  to: "numbers#new"
  get "locations", to: "locations#index"
  get "locations/new", to: "locations#new"

end
