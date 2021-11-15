class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :duration
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :shoe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
