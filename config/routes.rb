Rails.application.routes.draw do
  scope "(/:locale)", locale: /en|pt/ do
    post "/authenticate", to: "home#authenticate"
    post "/rsvp", to: "home#rsvp"
    post "/suggestions", to: "home#suggestions"
  end

  get "/:locale" => "home#index"

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
