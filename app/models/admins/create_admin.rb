module Admins
  # Service object create Admin
  class CreateAdmin
    def initialize(params)
      @params = params
    end
    def save
      @admin = Admin.new @params
      @admin.save
      @admin
    end
  end
end