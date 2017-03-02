class BoatsController < ApplicationController
	def index
		@boat = Boat.new
		@boats = Boat.all
	end

	def create
		@boat = Boat.create(boat_params)

		@boat.save
		redirect_to :back
	end

	private

	def boat_params
		params.require(:boat).permit(:image)
	end
end
