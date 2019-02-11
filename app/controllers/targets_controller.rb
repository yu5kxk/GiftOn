class TargetsController < ApplicationController
	def create
		@target = Target.new(target_params)
		target.save
		redirect_to new_post_path
	end

	def update
		target = Target.find(params[:id])
		target.update
		redirect_to
	end

	private
  		def target_params
    	params.require(:target).permit(:age_id, :gender_id)
  	end
end
