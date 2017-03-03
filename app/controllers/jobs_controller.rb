class JobsController < ApplicationController
	def index
		
	end

	def new

		@job = Job.new

	end

	def create
		if current_user
			new_params = jobs_params.merge(user_id: current_user.id)
			job = Job.new(new_params)
			
			job.save
			redirect_to job_path(job)
		else
			#do some error logic
		end
	end

	def show
		@job = Job.find(params[:id])
		
	end

	def destroy
		@job = Job.find(params[:id]) 
		@job.destroy

		redirect_to root_path
	end
		

		def for_user
			@user = User.find(params[:user_id])

			@jobs = @user.jobs
		end


	private

	def jobs_params
		params.require(:job).permit(:description, :origin, :destination, :id, :quantity, :cost, :boat_id)
		
	end
end
