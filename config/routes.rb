Rails.application.routes.draw do
  extend CropsRoutes
  extend CountriesRoutes
  extend ProvidersRoutes
  root 'crops#index'
  resources :type_products
  # resources :countries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
