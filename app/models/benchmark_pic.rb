class BenchmarkPic < ApplicationRecord
   has_many :final_pic
   belongs_to :user
end
