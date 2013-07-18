class Music < ActiveRecord::Base

	belongs_to :user
	has_many :comments, dependent: :destroy

  attr_accessible :genre, :image_upload, :remove_image_upload, :music_upload, :remove_music_upload, :name, :rating, :user_id, :comments

  mount_uploader :image_upload, MusicImageUploader
  mount_uploader :music_upload, MusicFileUploader


  validates :name, presence: true
  validates :genre, presence: true
  validates :rating, presence: true

  default_scope order('musics.rating DESC')

end
