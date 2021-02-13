class BenchmarkPic < ApplicationRecord
   has_many :final_pic
   validates :user_id, presence: true
   validates :json_overlay, presence: true


end
