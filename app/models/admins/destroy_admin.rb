module Admins
  # Service object create Admin
  class DestroyAdmin
    def initialize(admin)
      @admin = admin
    end
    def destroy
      @admin.destroy
    end
  end
end