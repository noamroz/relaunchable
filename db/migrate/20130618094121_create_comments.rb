class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :on, :polymorphic => true

      t.string :title
      t.string :content, :limit => 4000

      t.timestamps
    end

    add_index :comments, [:on_type, :on_id]
  end
end
