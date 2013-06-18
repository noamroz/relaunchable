class CreateVisions < ActiveRecord::Migration
  def change
    create_table :visions do |t|
      t.references :product, :relauncher

      t.string :plan, :team, :expectations, :limit => 4000
      t.string :availability
      t.integer :equity, :self_investment

      t.timestamps
    end

    add_index :visions, :product_id
  end
end
