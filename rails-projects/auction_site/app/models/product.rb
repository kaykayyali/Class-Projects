class Product < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	validates :user_id, :presence => true
	validates :title, :presence => true, :length => {maximum: 30}
	validates :description, :presence => true
	validates :deadline, :presence => true
end
