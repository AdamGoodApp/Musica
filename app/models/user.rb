class User < ActiveRecord::Base

	before_create :ensure_user_is_premium

	has_many :comments, foreign_key: :author_id, dependent: :destroy
	has_many :images, dependent: :destroy
	has_many :musics, dependent: :destroy

	has_secure_password

	accepts_nested_attributes_for :musics
    accepts_nested_attributes_for :images

    def role?(role)
 		self.role == role
	end

	validates :email, presence: true, uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :on => :create
	validates :name, presence: true, uniqueness: true
	validates :description, presence: true, :on => :update
	validates :genre, presence: true, :on => :update
	validates :location, presence: true, :on => :update
	validates :rating, presence: true, :on => :update
	validates :images, presence: true, :on => :update



    attr_accessible :description, :genre, :location, :name, :rating, :musics, :images, :image_upload, :music_upload, :images_attributes, :email, :password, :password_confirmation

    private

    def ensure_user_is_premium
    	self.role = 'premium'
    end

end
