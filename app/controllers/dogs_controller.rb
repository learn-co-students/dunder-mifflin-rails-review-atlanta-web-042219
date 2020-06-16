class DogsController < ApplicationController

	before_action :set_dog, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(strong_params)
		if @dog.save
			redirect_to dog_path(@dog)
			else
				render 'new'
			end
	end

	def edit
	end

	def update
		params[:dog][:employee_ids] ||= []
		if @dog.update(strong_params)
			redirect_to dog_path(@dog)
		else
			render 'edit'
		end
	end

	def destroy
		@dog.destroy
		redirect_to dogs_path
	end

	private

	def strong_params
		params.require(:dog).permit(:name, :age, :breed, :employee_ids => [])
	end

	def set_dog
		@dog = Dog.find(params[:id])
	end
end
