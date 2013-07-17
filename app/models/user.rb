class User < ActiveRecord::Base

	has_many :comments 
	has_many :images
	has_many :musics

	has_secure_password

	accepts_nested_attributes_for :musics
    accepts_nested_attributes_for :images

    attr_accessible :description, :genre, :location, :name, :rating, :musics, :images, :image_upload, :music_upload, :images_attributes, :email, :password, :password_confirmation

end
