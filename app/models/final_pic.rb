class FinalPic < ApplicationRecord
  belongs_to :user
  has_many :hashtags
  belongs_to :benchmark_pic
  # validates :benchmark_pics, presence: false
end
