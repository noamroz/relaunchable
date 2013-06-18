class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :owner, :category, :status
      t.string :name, :description, :team_description, :failure_reasons, :relauncher_expectations, :assets
      t.integer :past_investments, :estimated_valuation, :needed_investments
      t.boolean :incorporated



      t.string :site_url

      t.timestamps
    end

    add_index :products, :category_id
    add_index :products, :status_id

    create_table :products_users, :id => false do |t|
      t.references :user, :product
    end

    add_index :products_users, :user_id
    add_index :products_users, :product_id
  end
end
