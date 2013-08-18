Ooply::Application.routes.draw do

  root 'site#index'


  
  get "about" => "site#about"

  resources 'categories'
end
