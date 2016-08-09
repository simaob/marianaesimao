Rails.application.routes.draw do
  post "/authenticate", to: "home#authenticate"
  post "/rsvp", to: "home#rsvp"
  post "/suggestions", to: "home#suggestions"

  get "/:locale" => "home#index", as: :locale_root

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
