class FinalPic < ApplicationRecord
  belongs_to :user
  has_many :hashtags
  belongs_to :benchmark_pic, required: false
end
