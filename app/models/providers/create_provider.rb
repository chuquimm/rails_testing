module Providers
  # Service object create Provider
  class CreateProvider
    def initialize(params)
      @params = params
    end

    def save
      @provider = Provider.new @params
      @provider.save
      @provider
    end
  end
end
