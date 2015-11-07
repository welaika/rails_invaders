class AddLastPingAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_ping_at, :datetime
    add_index :users, :last_ping_at
  end
end
