class Employee < ApplicationRecord
  has_many :employee_locations
  has_many :locations, through: :employee_locations
  has_many :employee_departments
  has_many :departments, through: :employee_departments

  scope :l0, -> {where("auth_level=0")}
  scope :l1, -> {where("auth_level=1")}
  scope :l2, -> {where("auth_level=2")}
  scope :l3, -> {where("auth_level=3")}
  scope :l4, -> {where("auth_level=4")}
  scope :l5, -> {where("auth_level=5")}
  scope :l6, -> {where("auth_level=6")}
  scope :l7, -> {where("auth_level=7")}

  def has_department?(department_id)
    !self.departments.where(id: department_id).empty?
  end
end
