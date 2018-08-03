class ChangeTotalPriceName < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :total_price, :price
  end
end
