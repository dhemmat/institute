class DevotionalParticipant < ActiveRecord::Base
	belongs_to :devotional
	belongs_to :person
end
