class RenameAddressToPostcodeInShoes < ActiveRecord::Migration[6.0]
  def up
    rename_column :shoes, :address, :postcode
  end

  def down
    rename_column :shoes, :postcode, :address
  end
end
