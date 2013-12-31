class NeighborhoodsController < ApplicationController

	respond_to :json
	def index
		@neighborhoods = Neighborhood.all
	end
end
