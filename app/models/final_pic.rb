class FinalPic < ApplicationRecord
  belongs_to :user_id
  has_many :hashtags
  # validates :benchmark_pics, presence: false
end
