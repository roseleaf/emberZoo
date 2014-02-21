class AnimalsController < ApplicationController
	def index
		@animals = Animal.all
		render json: @animals
	end
	def show
    	@animal = Animal.find(params[:id])
    	render json: @animal
	end
	def new
		@animal = Animal.new
		respond_to do |format|
		  format.json { render json: @animal }
		end
	end
	def update
		@animal = Animal.find(params[:id])
	    if @animal.update_attributes(animal_params)
	      @animal.save!
	      head :no_content
	  	else
	      render json: @animal.errors, status: :unprocessable_entity
	    end
	end

	private
	def animal_params
    	params.require(:animal).permit(:name, :diet, :temperament, :color, :classification)
  	end
end