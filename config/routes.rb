Rails.application.routes.draw do
  #scope "(/:locale)", locale: /en|pt/ do
  #end

  get "/:locale" => "home#index"

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
