class City < ActiveRecord::Base
	belongs_to :cluster
	has_many :sectors
end
