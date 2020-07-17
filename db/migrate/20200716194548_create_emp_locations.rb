class CreateEmpLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :emp_locations do |t|
      t.string :current_city
      t.string :country
      t.integer :pincode
      t.references :employee_table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
