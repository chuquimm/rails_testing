module ProvidersRoutes
  def self.extended(router)
    router.instance_exec do
      resources :providers
    end
  end
end
