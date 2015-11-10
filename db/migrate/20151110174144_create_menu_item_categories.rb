class CreateMenuItemCategories < ActiveRecord::Migration
  def change
    create_table :menu_item_categories do |t|
      t.string :category, null: false, default: ""
      t.integer :search_category_id, null: false
      t.integer :restaurant_id, null: false
    end
  end
end
