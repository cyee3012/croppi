class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :final_pics
  has_many :benchmark_pics, through: :final_pics
end
