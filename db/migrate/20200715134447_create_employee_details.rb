class CreateEmployeeDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_details do |t|
      t.integer :employee_id
      t.string :gender
      t.string :dob
      t.integer :contact_number
      t.references :employee_table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
