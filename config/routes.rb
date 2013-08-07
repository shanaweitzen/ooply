Ooply::Application.routes.draw do

  root 'site#index'
  
  get "about" => "site#about"

  get "categories" => "site#categories"
end
