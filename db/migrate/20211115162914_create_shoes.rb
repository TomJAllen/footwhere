class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :title
      t.string :brand
      t.string :type
      t.integer :size
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
