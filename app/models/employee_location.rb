class EmployeeLocation < ApplicationRecord
  belongs_to :employee_details
  belongs_to :employee_table
end
