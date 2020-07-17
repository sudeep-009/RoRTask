class CreateEmployeeTables < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_tables do |t|
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
