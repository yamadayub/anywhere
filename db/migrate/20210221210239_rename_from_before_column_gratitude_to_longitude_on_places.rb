class RenameFromBeforeColumnGratitudeToLongitudeOnPlaces < ActiveRecord::Migration[5.2]
  def change
    rename_column :places, :gratitude, :longitude
  end
end
