class VideosController < ApplicationController
  def new
    @video = Video.new
    @places = Place.all
  end

  def create
    if @video = Video.create(video_params)
      flash[:success] = "投稿に成功しました"
      #binding.pry
      @place = Place.find(@video.places_id)
      redirect_to @place
    else
      flash[:danger] = "投稿に失敗しました"
      redirect_to :back
    end
  end
  
  def video_params
    params.require(:video).permit(:video_id,:places_id)
  end
end
