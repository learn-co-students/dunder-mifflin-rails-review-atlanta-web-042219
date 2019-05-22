class EmployeesController < ApplicationController

	before_action :set_employee, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(strong_params)
		if @employee.save
			redirect_to employee_path(@employee)
			else
				render 'new'
			end
	end

	def edit
	end

	def update
		# params[:employee][:dog_id] ||= []
		if @employee.update(strong_params)
			redirect_to employee_path(@employee)
		else
			render 'edit'
		end
	end

	def destroy
		@employee.destroy
		redirect_to employees_path
	end

	private

	def strong_params
		params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
	end

	def set_employee
		@employee = Employee.find(params[:id])
	end
end
