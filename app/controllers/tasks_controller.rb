class TasksController < ApplicationController
	respond_to :json
	def index
		respond_with Task.all
	end
	def show
    	respond_with Task.find(params[:id])
	end
	def new
		@job = Task.new
		respond_to do |format|
		  format.json { render json: @job }
		end
	end	
end
