class Location < ApplicationRecord
  has_many :employee_locations
  has_many :employees, through: :employee_locations
  has_many :location_departments
  has_many :departments, through: :location_departments

  scope :stores, -> {where("location_type='store'")}
  scope :warehouses, -> {where("location_type='warehouse'")}
  scope :offices, -> {where("location_type='office'")}
  scope :italy, -> {where("country='it'")}
  scope :germany, -> {where("country='de'")}


  def full_address
    "#{self.address} #{self.city} #{self.state} #{self.post_code} #{self.country}"
  end

end
