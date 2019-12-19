# frozen_string_literal: true

module Providers
  # Service object create Provider
  class UpdateProvider
    def initialize(provider, params)
      @provider = provider
      @params = params
    end

    def update
      @provider.update(@params) ? true : false
    end
  end
end
