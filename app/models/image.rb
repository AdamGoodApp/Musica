class Image < ActiveRecord::Base

	belongs_to :user

  attr_accessible :description, :image_upload, :remove_image_upload, :name, :user_id, :images

  mount_uploader :image_upload, ImageImageUploader
end
