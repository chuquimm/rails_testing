# Admins Routes
module AdminsRoutes
  def self.extended(router)
    router.instance_exec do
      resources :admins
    end
  end
end
