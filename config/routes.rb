Ooply::Application.routes.draw do

 
#Registration
  get 'register', to: 'registrants#new', as: :register #form

  post 'register', to: 'registrants#create' #this runs when you click button on the form- related to DB

  get 'register/:code', to: 'registrants#edit', as: :registration # 

  delete 'register/:code', to: 'registrants#destroy' #use later

  #Authentication

  #Users 
  get 'users/new', to: 'users#new', as: :new #get the form for sign up

  get 'users/:id/edit', to: 'users#edit', as: :edit

  get '/user/:id', to: 'users#show', as: :user

  put 'users/:id', to: 'users#update', as:"update"

  delete '/users/:id', to:'users#destroy', as:"delete"

  resources :users
  
  #Login

 get     'login'  => 'sessions#new', as: :login
 post    'login'  => 'sessions#create'


#Logout

 delete '/sessions/:id', to:'sessions#destroy', as:'logout' 
 get "about" => "site#about"

  resources 'categories'

   root 'site#index'
end
