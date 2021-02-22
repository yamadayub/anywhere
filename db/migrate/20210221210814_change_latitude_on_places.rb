class ChangeLatitudeOnPlaces < ActiveRecord::Migration[5.2]
  def change
    change_column :places, :latitude, :decimal, precision: 15, scale: 13 
  end
end
