class User < ActiveRecord::Base
	has_many :products
	has_many :bids
	validates :email, uniqueness: true, presence: true
	validates :name, presence: true



end
