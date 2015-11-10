class AddCategoryIdToRestaurants < ActiveRecord::Migration
  def change
    change_table :restaurants do |t|
      t.integer :category_id, null: false

      add_foreign_key :restaurants, :categories, on_delete: :cascade

    end
    end
end
