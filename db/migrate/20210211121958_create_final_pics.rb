class CreateFinalPics < ActiveRecord::Migration[6.0]
  def change
    create_table :final_pics do |t|
      t.string :location
      t.text :hashtags
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
