class StaticPagesController < ApplicationController
  def index
    @places = Place.where(id: 1..20)
  end
end
