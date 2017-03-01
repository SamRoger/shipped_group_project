class JobsController < ApplicationController
	def index
		
	end

	def new
		@job = Job.new
	end

	def create
		job = Job.new
		job.description = jobs_params[:description]
		job.origin = jobs_params[:origin]
		job.destination = jobs_params[:destination]
		job.cost = jobs_params[:cost]
		job.boat_id = jobs_params[:boat_id]

		job.save

		redirect_to job
	end

	def show
		@job = Job.find(params[:id])
		
	end

	def destroy
		@job = Job.find(params[:id]) 
		@job.destroy

		redirect_to job_path
	end
		


	private

	def jobs_params
		params.require(:job).permit(:description, :origin, :destination, :quantity, :cost, :boat_id)
		
	end
end
