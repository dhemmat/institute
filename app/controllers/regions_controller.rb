class RegionsController < ApplicationController

	respond_to :json
	def index
		@countries = Country.all
	end

end
