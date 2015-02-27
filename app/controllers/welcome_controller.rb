class WelcomeController < ApplicationController
  def index
    @flats = Flat.all
    @pins = @flats.map { |flat| [flat.latitude, flat.longitude] }
  end
end
