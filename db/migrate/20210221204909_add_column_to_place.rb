class AddColumnToPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :latitude, :decimal
    add_column :places, :gratitude, :decimal
  end
end
