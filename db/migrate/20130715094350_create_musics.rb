class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.integer :user_id
      t.string :music_upload
      t.string :name
      t.string :genre
      t.float :rating
      t.string :image_upload

      t.timestamps
    end
  end
end
