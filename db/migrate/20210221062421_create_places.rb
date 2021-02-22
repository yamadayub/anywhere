class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :district
      t.string :map_url

      t.timestamps
    end
  end
end
