class AddPriceToShoes < ActiveRecord::Migration[6.0]
  def change
    add_column :shoes, :price, :string
  end
end
