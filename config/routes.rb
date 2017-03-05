Rails.application.routes.draw do
  get "/", to: 'ctrlbeers#index'
  get "/beers", to: 'beers#index'
  post "/beers", to: 'beers#create'
  delete "/beers/:id", to: 'beers#destroy'
  patch "/beers/:id", to: 'beers#update'

  namespace :api do
    namespace :v1 do
      get "/", to: 'beers#index'
    end 
  end
end