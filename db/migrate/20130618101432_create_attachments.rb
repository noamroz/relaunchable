class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :user
      t.references :to, :polymorphic => true

      t.string :name, :url, :thumbnail

      t.timestamps
    end

    add_index :attachments, [:to_type, :to_id]
  end
end
