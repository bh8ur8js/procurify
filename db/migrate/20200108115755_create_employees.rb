class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :auth_level
      t.integer :auth_amount
      t.string :phone
      t.string :role
      t.string :job_title

      t.timestamps
    end
  end
end
