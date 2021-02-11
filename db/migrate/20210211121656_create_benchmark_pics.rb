class CreateBenchmarkPics < ActiveRecord::Migration[6.0]
  def change
    create_table :benchmark_pics do |t|
      t.integer :user_id
      t.text :json_overlay

      t.timestamps
    end
  end
end
