class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update]
    
    def index
        @Employees = Employee.all
    end

    def show
    end

    def new
        @Employee = Employee.new
    end



    def create
        @Employee = Employee.new(employee_params)
        if @Employee.save
            redirect_to employee_path(@Employee)
        else 
            render :new
        end 
    end

    def edit
    end

    def update
        if @Employee.update(employee_params)
            redirect_to employee_path(@Employee)
        else 
            render :edit
        end 
    end

    def destroy
        Employee.destroy(params[:id])
        redirect_to employees_path
    end



    private
    def set_employee
        @Employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end
