class FinalPic < ApplicationRecord
  belongs_to :user
  has_many :hashtags
  # validates :benchmark_pics, presence: false
end
