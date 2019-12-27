# Sessions Routes
module SessionsRoutes
  def self.extended(router)
    router.instance_exec do
      get     '/login_admin', to: 'sessions#new_admin', as: 'new_admin_session'
      post    '/login_admin', to: 'sessions#create_admin', as: 'create_admin_session'
      delete  '/logout_admin', to: 'sessions#destroy_admin', as: 'logout_admin'
    end
  end
end
