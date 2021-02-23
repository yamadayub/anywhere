class AddColumnsToPlace < ActiveRecord::Migration[5.2]
  def change
        add_column :places, :state, :string
  end
end
