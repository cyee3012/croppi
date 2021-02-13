class BenchmarkPic < ApplicationRecord
  has_many :final_pics
  validates :user_id, presence: true
  #validates :json_overlay, presence: true
  has_one_attached :photo
  belongs_to :user
end
