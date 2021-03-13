class StaticPagesController < ApplicationController
  def index
    @places = Place.where(id: 1..12)
  end
end
