class Address < ActiveRecord::Base
	belongs_to :neighborhood
	has_many :devotional_addresses
end
