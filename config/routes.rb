Rails.application.routes.draw do
  get 'markets/index'
  get 'markets/gain'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'markets#index'
end


