class SectorsController < ApplicationController

	respond_to :json
	def index
		@sectors = Sector.all
	end
end
