class DevotionalAddress < ActiveRecord::Base
	belongs_to :devotional
	belongs_to :address
end
