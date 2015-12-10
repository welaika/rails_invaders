class AddValidToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :visible, :boolean, null: false, default: true
    add_index :matches, :visible
  end
end
