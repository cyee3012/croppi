class AddBenchmarkPicToFinalPics < ActiveRecord::Migration[6.0]
  def change
    add_reference :final_pics, :benchmark_pic, null: false, foreign_key: true
  end
end
