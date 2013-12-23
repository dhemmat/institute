class DevotionalsController < ApplicationController
	def index
		@devotionals = Devotional.all
	end

	def show
		@devotional = Devotional.find(params[:id])
	end
end
