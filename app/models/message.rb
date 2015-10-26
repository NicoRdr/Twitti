class Message < ActiveRecord::Base
	belongs_to :user 
	validates_presence_of :content

	paginates_per 7 
end
