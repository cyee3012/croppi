class AddCoordinatesToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :latitude, :float
    add_column :locations, :longitude, :float
    rename_column :locations, :coordinates, :address
  end
end
