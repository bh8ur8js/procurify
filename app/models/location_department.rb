class LocationDepartment < ApplicationRecord
  belongs_to :location
  belongs_to :department
end
