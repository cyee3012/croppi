class AddLocationRefToBenchmarkPics < ActiveRecord::Migration[6.0]
  def change
    add_reference :benchmark_pics, :location, foreign_key: true
  end
end
