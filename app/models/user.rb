class User < ActiveRecord::Base

	before_create :ensure_user_is_premium

	has_many :comments 
	has_many :images
	has_many :musics

	has_secure_password

	accepts_nested_attributes_for :musics
    accepts_nested_attributes_for :images

    def role?(role)
 		self.role == role
	end


    attr_accessible :description, :genre, :location, :name, :rating, :musics, :images, :image_upload, :music_upload, :images_attributes, :email, :password, :password_confirmation

    private

    def ensure_user_is_premium
    	self.role = 'premium'
    end

end
