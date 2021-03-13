class PlacesController < ApplicationController
  
  def show
    @place = Place.find(params[:id])
    @videos = Video.where(places_id: @place.id)
  end
  
  def new
    @place = Place.new
  end
  
  def create
    if @place = Place.create(place_params)
      flash[:success] = "投稿に成功しました"
      #binding.pry
      redirect_to @place
    else
      flash[:danger] = "投稿に失敗しました"
      redirect_to :back
    end
  end
  
  def place_params
    params.require(:place).permit(:name, :country, :state, :city, :latitude, :longitude, )
  end
end
