# frozen_string_literal: true

module Countries
  # Service object create Country
  class UpdateCountry
    def initialize(country, params)
      @country = country
      @params = params
    end

    def update
      @country.update(@params) ? true : false
    end
  end
end
