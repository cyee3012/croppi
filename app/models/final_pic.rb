class FinalPic < ApplicationRecord
  belongs_to :user_id
  has_many :hashtags
end
