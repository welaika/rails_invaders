class AddValidToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :valid, :boolean, null: false, default: true
    add_index :matches, :valid
  end
end
