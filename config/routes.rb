Rails.application.routes.draw do
  extend CropsRoutes
  resources :type_products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
