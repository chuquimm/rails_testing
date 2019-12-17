module Crops
  # Service object create Crop
  class DestroyCrop
    def initialize(crop)
      @crop = crop
    end
    def destroy
      @crop.destroy
    end
  end
end