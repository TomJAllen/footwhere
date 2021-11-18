class RemoveImageUrlFromShoes < ActiveRecord::Migration[6.0]
  def change
    remove_column :shoes, :image_url, :string
  end
end
