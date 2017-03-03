class BoatsController < ApplicationController
  def index
  	@boat = Boat.new
  	@boats = Boat.all
  end

  def create
  	@boat = Boat.new(boat_params)
  	@boat.user_id = current_user.id

  	@boat.save
  	redirect_to @boat
  end

  private

  def boat_params
  	params.require(:boat).permit(:image)
  	
  end
end
