class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :country
      t.string :name
      t.string :code
      t.string :source_code

      t.timestamps
    end
  end
end
