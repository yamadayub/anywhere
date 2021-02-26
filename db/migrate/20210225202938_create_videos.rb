class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :video_id
      t.string :title
      t.text :embed

      t.timestamps
    end
  end
end
