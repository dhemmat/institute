class RegionsController < ApplicationController

	respond_to :json
	def list
		@countries = Country.all
	end

end
