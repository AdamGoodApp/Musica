class Comment < ActiveRecord::Base

	belongs_to :author, class_name: 'User'
	belongs_to :music

  attr_accessible :author_id, :date, :description, :music_id
end
