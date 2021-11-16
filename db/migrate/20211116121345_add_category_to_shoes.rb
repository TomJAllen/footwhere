class AddCategoryToShoes < ActiveRecord::Migration[6.0]
  def change
    add_column :shoes, :category, :string
    remove_column :shoes, :type, :string
  end
end
