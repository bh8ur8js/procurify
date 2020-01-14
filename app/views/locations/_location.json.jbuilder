json.extract! location, :id, :procurify_id, :location_type, :status, :business, :business_unit, :internal_id, :description, :cost_centre, :address, :city, :state, :post_code, :country, :phone, :fax, :created_at, :updated_at
json.url location_url(location, format: :json)
