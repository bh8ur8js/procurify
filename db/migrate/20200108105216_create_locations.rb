class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :procurify_id
      t.string :location_type
      t.string :status
      t.string :business
      t.string :business_unit
      t.string :internal_id
      t.string :description
      t.string :cost_centre
      t.string :address
      t.string :city
      t.string :state
      t.string :post_code
      t.string :country
      t.string :phone
      t.string :fax

      t.timestamps
    end
  end
end
