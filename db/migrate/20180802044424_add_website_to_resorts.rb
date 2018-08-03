class AddWebsiteToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :website, :string
  end
end
