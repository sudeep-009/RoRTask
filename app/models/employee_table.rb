class EmployeeTable < ApplicationRecord
  has_one :employee_detail , dependent: :destroy
  has_one :emp_location , dependent: :destroy
end
