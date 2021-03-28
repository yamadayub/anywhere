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
  
  def find_videos(keyword) #検索キーワードと検索範囲を変えれるように引数に値を取っています
    service = Google::Apis::YoutubeV3::YouTubeService.new
    service.key = ENV['GOOGLE_MAP_API_KEY']
    next_page_token = nil
    opt = {
      q: keyword,
      type: 'video',
      max_results: 10,
      order: :date,
      page_token: next_page_token,
      # published_after: after.iso8601,
      # published_before: before.iso8601
    }
    service.list_searches(:snippet, opt)
  end
 
  def search
    @youtube_data = find_videos(params[:keyword])
    # binding.pry
    @video = Video.new
    @places = Place.all
    # render 'videos/new'
  end
  
  def video_params
    params.require(:video).permit(:video_id,:places_id)
  end
  
  def youtube_search_params
    params.require(:youtube).permit(:keyword)
  end
  
end
