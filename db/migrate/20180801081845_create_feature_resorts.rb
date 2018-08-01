class CreateFeatureResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_resorts do |t|
      t.references :feature, foreign_key: true
      t.references :resort, foreign_key: true

      t.timestamps
    end
  end
end
