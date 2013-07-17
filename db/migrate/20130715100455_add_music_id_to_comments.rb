class AddMusicIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :music_id, :integer
  end
end
