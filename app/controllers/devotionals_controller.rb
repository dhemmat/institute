class DevotionalsController < ApplicationController
	def index
		@devotionals = Devotional.all
	end
end
