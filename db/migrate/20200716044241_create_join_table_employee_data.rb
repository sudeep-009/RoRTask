class CreateJoinTableEmployeeData < ActiveRecord::Migration[6.0]
  def change
    create_join_tables :employee_tables, :employee_details, :employee_locations do |t|
      t.integer :employee_table_id
      t.integer :employee_detail_id
      t.integer :employee_location_id

      t.timestamps
    end
  end
end
