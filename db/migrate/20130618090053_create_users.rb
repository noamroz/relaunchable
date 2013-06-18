class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name, :last_name, :picture

      t.timestamps
    end

    add_index :users, :email, :unique =>  true
  end
end
