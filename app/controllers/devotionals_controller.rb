class DevotionalsController < ApplicationController
	def index
		@devotionals = Devotional.all
	end

	def show
		@devotional = Devotional.find(params[:id])
	end

	def new
		@devotional = Devotional.new
	end

	def create
    @devotional = Devotional.new(devotional_params)
    if @devotional.save
      render 'show'
    else
      render 'new'
    end
  end

  private

    def devotional_params
      params.require(:devotional).permit(:description)
    end

end
