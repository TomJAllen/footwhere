class AddCoordinatesToShoes < ActiveRecord::Migration[6.0]
  def change
    add_column :shoes, :latitude, :float
    add_column :shoes, :longitude, :float
  end
end
