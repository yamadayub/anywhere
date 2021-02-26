class PlacesController < ApplicationController
  
  def show
    @place = Place.find(params[:id])
    @videos = Video.where(places_id: @place.id)
  end
  
end
