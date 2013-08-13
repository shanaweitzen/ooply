Ooply::Application.routes.draw do

  root 'site#index'

  
  get "about" => "site#about"

  # resources 'categories'

  get "categories" => "categories#index"

  get "categories/:id" => "categories#show"
end
