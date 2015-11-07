class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :user, null: false
      t.integer :score, null: false, default: 0
      t.timestamps null: false
    end
  end
end
