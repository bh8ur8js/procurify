json.extract! employee, :id, :first_name, :last_name, :email, :auth_level, :auth_amount, :phone, :role, :job_title, :created_at, :updated_at
json.url employee_url(employee, format: :json)
