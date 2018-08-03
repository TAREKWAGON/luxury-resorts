class AddIsOwnerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_owner, :boolean
  end
end
