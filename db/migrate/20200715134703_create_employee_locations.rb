class CreateEmployeeLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_locations do |t|
      t.integer :Employee_id
      t.string :current_city
      t.string :country
      t.integer :pin_code
      t.references :employee_details, null: false, foreign_key: true
      t.references :employee_table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
