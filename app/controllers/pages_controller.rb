class PagesController < ApplicationController
  def home
  	@users = User.all

  	@jobs = Job.all
  end
end
