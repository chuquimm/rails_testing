# Crops Routes
module CountriesRoutes
  def self.extended(router)
    router.instance_exec do
      resources :countries
    end
  end
end
