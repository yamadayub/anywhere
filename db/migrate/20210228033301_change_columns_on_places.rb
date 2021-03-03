class ChangeColumnsOnPlaces < ActiveRecord::Migration[5.2]
  def change
    change_column :places, :latitude, :decimal, precision: 16, scale: 13 
    change_column :places, :longitude, :decimal, precision: 16, scale: 13
  end
end
