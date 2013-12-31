class ClustersController < ApplicationController

	respond_to :json
	def index
		@clusters = Cluster.all
	end

end
