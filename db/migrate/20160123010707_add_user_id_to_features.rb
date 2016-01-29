class AddUserIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :user_id, :integer
    add_index :features, :user_id
  end
end
