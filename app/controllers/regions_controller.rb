class RegionsController < ApplicationController

	respond_to :json
	def index
		@regions = Region.all
	end

end
