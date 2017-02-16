Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: 'beers#index'
  get "/beers", to: 'beers#index'

  namespace :api do
    namespace :v1 do
      get "/", to: 'beers#index'
    end 
  end
end