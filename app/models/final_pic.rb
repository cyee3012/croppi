class FinalPic < ApplicationRecord
  belongs_to :user
  has_many :hashtags
  belongs_to :benchmark_pic, required: false
  has_one_attached :photo
end
