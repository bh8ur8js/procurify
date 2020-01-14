class Employee < ApplicationRecord
  has_many :employee_locations
  has_many :locations, through: :employee_locations
  has_many :employee_departments
  has_many :departments, through: :employee_departments
end
