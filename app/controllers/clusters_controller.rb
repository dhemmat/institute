class ClustersController < ApplicationController

	respond_to :json
	def list
		@countries = Country.all
	end

end
