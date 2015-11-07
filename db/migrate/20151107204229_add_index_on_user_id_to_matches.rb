class AddIndexOnUserIdToMatches < ActiveRecord::Migration
  def change
    add_index :matches, :user_id
  end
end
