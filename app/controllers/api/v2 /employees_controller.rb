class Api::V2::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    
  end

  def create
    @employees = Employee.create(
                                first_name: params[:first_name_name],
                                last_name: params[:last_name],
                                email: params[:email]
                                )
    render :show
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(
                      first_name: params[:first_name_name],
                      last_name: params[:last_name],
                      email: params[:email]
                    )
    
    render :show
  end

  def show
    @employees = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: {message: 'Employee Destroyed'}, status: 200
    
  end

end
