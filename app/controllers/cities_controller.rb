class CitiesController < ApplicationController

	respond_to :json
	def index
		@cities = City.all
	end

end
