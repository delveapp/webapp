class AddOnCascadeDeleteToForeignKeys < ActiveRecord::Migration
  def change

    remove_foreign_key :menu_items, :restaurants
    add_foreign_key :menu_items, :restaurants, on_delete: :cascade

    remove_foreign_key :menu_items, :menu_item_scores
    add_foreign_key :menu_items, :menu_item_scores, on_delete: :nullify

    remove_foreign_key :user_pictures, :menu_items
    add_foreign_key :user_pictures, :menu_items, on_delete: :cascade

    remove_foreign_key :user_scores, :users
    add_foreign_key :user_scores, :users, on_delete: :cascade

    remove_foreign_key :user_scores, :menu_items
    add_foreign_key :user_scores, :menu_items, on_delete: :cascade

  end
end
