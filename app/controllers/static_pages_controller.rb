class StaticPagesController < ApplicationController
  def index2
    @places = Place.where(id: 1..12)
  end
  def index
    @places = Place.all
    @place = Place.new
  end
end
