class JobsController < ApplicationController
	def index
		
	end

	def new

		@job = Job.new

	end

	def create
		if current_user

			new_params = jobs_params.merge(user_id: current_user.id)

			@job = Job.new(new_params)
			
			if @job.save
				redirect_to job_path(@job)
			else
				flash[:notice] = @job.errors
				render "new"
			end

		else

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

	def edit
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:id])

		if @job.update(jobs_params)
			redirect_to @job
		end
	end

	def for_user
		@user = User.find(params[:user_id])

		@jobs = @user.jobs
	end


	private

	def jobs_params
		params.require(:job).permit(:description, :origin, :destination, :id, :quantity, :cost, :boat_id, :user_id)

	end
end
