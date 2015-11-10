class FixRestaurantForeignKeys < ActiveRecord::Migration
  def change
    change_table :restaurants do |t|
      remove_foreign_key :restaurants, :categories
      remove_column :restaurants, :category_id

      t.integer :restaurant_category_id
      add_foreign_key :restaurants, :restaurant_categories, on_delete: :nullify, on_update: :cascade
    end
  end
end
