class AddAddressToShoes < ActiveRecord::Migration[6.0]
  def change
    add_column :shoes, :address, :string
  end
end
