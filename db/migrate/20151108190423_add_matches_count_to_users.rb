class AddMatchesCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :matches_count, :integer
    add_index :users, :matches_count
  end
end
