class AddImageUrlToShoes < ActiveRecord::Migration[6.0]
  def change
    add_column :shoes, :image_url, :string
  end
end
