class AddEmployeeController < ApplicationController
  def index
  end

  def new
    @employee_table = EmployeeTable.new
    #
  end

  def create
    @employee_tables = EmployeeTable.new(post_params)
    if@employee_tables.save
      redirect_to @employee_tables
    else
      render 'new'
    end
  end

  private
  def post_params
    params.require(:employee_tables).permit(:email,:first_name,:last_name)
  end
end
