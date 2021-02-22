class ChangeLongitudeOnPlaces < ActiveRecord::Migration[5.2]
  def change
    change_column :places, :longitude, :decimal, precision: 15, scale: 13 
  end
end
