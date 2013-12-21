class Neighborhood < ActiveRecord::Base
	belongs_to :sector
	has_many :addresses
end
