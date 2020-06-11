Rails.application.routes.draw do
  get 'equipos/motorolla'
  get 'equipos/samsungs10'
  get 'equipos/huaweip40'
  get 'equipos/samsumga51'
  root 'home#index'
  get 'page/login'
  get 'page/registrate'
  get 'page/planes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
