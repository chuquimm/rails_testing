# frozen_string_literal: true

module Crops
  # Service object create Crop
  class UpdateCrop
    def initialize(crop, params)
      @crop = crop
      @params = params
    end

    def update
      @crop.update(@params) ? true : false
    end
  end
end
