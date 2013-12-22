class Devotional < ActiveRecord::Base
	has_many :devotional_addresses
	has_many :devotional_participants
end
