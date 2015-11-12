class FixMenuItemCategories < ActiveRecord::Migration
  def change
    change_table :menu_items do |t|
      remove_foreign_key :menu_items, :categories
      remove_column :menu_items, :category_id

      t.integer :menu_item_category_id
      add_foreign_key :menu_items, :menu_item_categories, on_delete: :nullify
    end
  end
end
