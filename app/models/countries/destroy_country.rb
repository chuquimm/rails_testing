module Countries
  # Service object create Country
  class DestroyCountry
    def initialize(country)
      @country = country
    end
    def destroy
      @country.destroy
    end
  end
end