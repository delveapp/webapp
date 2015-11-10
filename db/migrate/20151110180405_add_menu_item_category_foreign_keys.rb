class AddMenuItemCategoryForeignKeys < ActiveRecord::Migration
  def change

    add_foreign_key :menu_item_categories, :search_categories, on_update: :cascade
    add_foreign_key :menu_item_categories, :restaurants, on_delete: :cascade, on_update: :cascade

  end
end
