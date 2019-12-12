module CropsRoutes
    def self.extended(router)
        router.instance_exec do
            resources :crops
        end
    end
end