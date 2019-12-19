module Countries
  # Service object create Country
  class CreateCountry
    def initialize(params)
      @params = params
    end

    def save
      @country = Country.new @params
      @country.save
      @country
    end
  end
end