# frozen_string_literal: true

module Admins
  # Service object create Admin
  class UpdateAdmin
    def initialize(admin, params)
      @admin = admin
      @params = params
    end

    def update
      @admin.update(@params) ? true : false
    end
  end
end
