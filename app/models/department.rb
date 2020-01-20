class Department < ApplicationRecord
  has_many :employee_departments
  has_many :employees, through: :employee_departments
  has_many :location_departments
  has_many :locations, through: :location_departments
end
