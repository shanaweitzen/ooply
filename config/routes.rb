Ooply::Application.routes.draw do

  root 'site#index'
  
  get "about" => "site#about"

  get "categories" => "categories#index"

  get "categories/:name" => "categories#show"
end
