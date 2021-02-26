class AddColumnsToVideos < ActiveRecord::Migration[5.2]
  def change
    add_reference :videos, :places, foreign_key: true
  end
end
