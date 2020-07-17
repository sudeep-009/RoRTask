class EmployeeDetailsController < ApplicationController
  def create
    @employee_table = EmployeeTable.find(params[ :employee_table_id])
    @employee_detail = @employee_table.employee_detail.create(detail_params)
    redirect_to employee_table_path(@employee_table)
  end

  private
  def detail_params
    params.require(:employeedetail).permit(:employee_id, :gender, :dob, :contact_number)
  end
end
