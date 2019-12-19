module Providers
  # Service object create Provider
  class DestroyProvider
    def initialize(provider)
      @provider = provider
    end

    def destroy
      @provider.destroy
    end
  end
end