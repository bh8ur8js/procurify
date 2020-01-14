class Department < ApplicationRecord
  has_many :employee_departments
  has_many :employees, through: :employee_departments
end
