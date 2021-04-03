class AddColumns2ToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :latitude, :decimal, precision: 15, scale: 13
    add_column :videos, :longitude, :decimal, precision: 15, scale: 13 
  end
end
