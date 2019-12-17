module Crops
  # Service object create Crop
  class CreateCrop
    def initialize(params)
      @params = params
    end
    def save
      @crop = Crop.new @params
      @crop.save
      @crop
    end
  end
end