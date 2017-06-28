class AddUserToWikis < ActiveRecord::Migration[5.0]
  def change
    add_column :wikis, :user_id, :integer
    add_index :wikis, :user_id
  end
end
