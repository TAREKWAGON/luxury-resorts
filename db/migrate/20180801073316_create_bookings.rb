class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.integer :duration
      t.integer :total_price
      t.references :user, foreign_key: true
      t.references :resort, foreign_key: true

      t.timestamps
    end
  end
end