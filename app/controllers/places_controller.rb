class PlacesController < ApplicationController
  
  def index
    @place_params = place_search_params
    # binding.pry
    @place = Place.find(@place_params[:places_id])
    redirect_to @place
  end

  
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
  
  def place_search_params
    params.fetch(:search, {}).permit(:places_id)
  end
  
end
