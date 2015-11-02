class AddCategoriesToMenuItems < ActiveRecord::Migration
  def change
    change_table :menu_items do |t|
      t.integer :category_id
      t.integer :restaurant_id
      t.integer :menu_item_score_id

      add_foreign_key :menu_items, :categories
      add_foreign_key :menu_items, :restaurants
      add_foreign_key :menu_items, :menu_item_scores

    end
  end
end
