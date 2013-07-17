class Music < ActiveRecord::Base

	belongs_to :user
	has_many :comments

  attr_accessible :genre, :image_upload, :remove_image_upload, :music_upload, :remove_music_upload, :name, :rating, :user_id, :comments

  mount_uploader :image_upload, MusicImageUploader
  mount_uploader :music_upload, MusicFileUploader
end
