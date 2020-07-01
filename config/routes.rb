Rails.application.routes.draw do

  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    #omniauth: 'users/omniauth',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    unlocks: 'users/unlocks'
  }

  resources :mobiles
  resources :modelos
  resources :plans
  
  resources :marcas

  get 'olvidemiclave' => "page#olvidemiclave"
  get 'register' => "page#registrate"
  get 'recover' => "sessions#recover"
  get 'contact' => "page#contact"


  get 'planes' => "page#planes"

  get 'main' => "homeuser#index"
  get 'shop' => 'shop#index'
  get 'shop/index'

  get 'home/aboutus'





  get 'equipos/motorolla'
  get 'equipos/samsungs10'
  get 'equipos/huaweip40'
  get 'equipos/samsumga51'
#  get 'page/login'
#  get 'page/registrate'
#  post 'page/para_registro'
  
#  get 'page/planes'

  

  
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
