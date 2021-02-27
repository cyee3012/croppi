class AddLocationToFinalPic < ActiveRecord::Migration[6.0]
  def change
    remove_column :final_pics, :location, :string
    add_reference :final_pics, :location

  end
end
