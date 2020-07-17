class EmployeeTablesController < ApplicationController
  def index
    @employee_tables = EmployeeTable.all
  end



  def show
    @employee_table = EmployeeTable.find(params[:id])
    employee_table = @employee_table
  end

  def new
    @employee_table = EmployeeTable.new
  end

  def create
    @employee_table = EmployeeTable.new(employee_params)

     if @employee_table.save
       @emp = EmployeeTable.find_by_email(params[:employee_table][:email])
       EmployeeDetail.create(:employee_id => params[:employee_id],
         :gender => params[:gender],:dob => params[:dob], :contact_number => params[:contact_number],
          employee_table_id: @emp.id)
          EmpLocation.create(:current_city => params[:current_city],
            :country => params[:country],:pincode => params[:pincode],
             employee_table_id: @emp.id)
       redirect_to employee_tables_path
     else
       render :new
     end
  end

   def edit
      @employee_table = EmployeeTable.find(params[:id])
   end

   def update
      @employee_table = EmployeeTable.find(params[:id])

        if @employee_table.update(employee_params)
          EmployeeDetail.where("employee_table_id =?", params[:id]).update(:gender => params[:gender],
            :dob => params[:dob], :contact_number => params[:contact_number])
          EmpLocation.where("employee_table_id=?", params[:id]).update(:current_city => params[:current_city],
          :country => params[:country], :pincode => params[:pincode])
          redirect_to employee_tables_path
        else
          render :edit
        end
    end

    def destroy
      @employee_table = EmployeeTable.find(params[:id])
      @employee_table.destroy
      redirect_to employee_tables_path
    end



  private
  def employee_params
    params.require(:employee_table).permit(:email, :first_name, :last_name)
  end



end
