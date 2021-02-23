class PlacesController < ApplicationController
  def show
    #binding.pry
    @place = Place.find(params[:id])
  end
end
