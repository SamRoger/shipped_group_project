class PagesController < ApplicationController
  def home
  	@users = User.all
  	@job = Job.new
  end
end
