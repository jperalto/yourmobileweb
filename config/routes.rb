Rails.application.routes.draw do

  get 'logout' => 'sessions#logout'
  get 'login' => "sessions#login"
  post 'login' => "sessions#validar"
  get 'recover' => "sessions#recover"

  get 'main' => "homeuser#index"



  get 'shop' => 'shop#index'
  get 'shop/index'



  get 'equipos/motorolla'
  get 'equipos/samsungs10'
  get 'equipos/huaweip40'
  get 'equipos/samsumga51'
  get 'page/login'
  
  get 'page/registrate'
  post 'page/para_registro'
  
  get 'page/planes'

  

  
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
