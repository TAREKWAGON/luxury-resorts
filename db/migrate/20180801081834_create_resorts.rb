class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :continent
      t.string :country
      t.string :address
      t.string :image
      t.integer :price
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
