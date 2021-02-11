class BenchmarkPic < ApplicationRecord
   has_many :benchmark_pic_id
   validates :user_id, presence: true
   validates :json_overlay, presence: true


end
