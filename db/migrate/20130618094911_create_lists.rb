class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :view, :set
      t.integer :order

      t.timestamps
    end

    add_index :lists, :set
  end
end
