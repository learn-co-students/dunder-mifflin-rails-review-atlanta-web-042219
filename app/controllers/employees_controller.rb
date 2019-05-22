class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new
    @employee.first_name = params["employee"][:first_name]
    @employee.last_name = params["employee"][:last_name]
    @employee.alias = params["employee"][:alias]
    @employee.title = params["employee"][:title]
    @employee.office = params["employee"][:office]
    @employee.img_url = params["employee"][:img_url]
    @employee.dog = Dog.find(params["employee"][:dog_id])
    @employee.save
    if @employee.save
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.first_name = params["employee"][:first_name]
    @employee.last_name = params["employee"][:last_name]
    @employee.alias = params["employee"][:alias]
    @employee.title = params["employee"][:title]
    @employee.office = params["employee"][:office]
    @employee.img_url = params["employee"][:img_url]
    @employee.dog = Dog.find(params["employee"][:dog_id])
    @employee.save
    if @employee.save
      redirect_to employee_path
    else
      render :edit
    end
  end

end
