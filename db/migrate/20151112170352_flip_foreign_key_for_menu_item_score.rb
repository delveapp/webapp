class FlipForeignKeyForMenuItemScore < ActiveRecord::Migration
  def change
    change_table :menu_items do |t|
      remove_foreign_key :menu_items, :menu_item_scores
      remove_column :menu_items, :menu_item_score_id
    end

    change_table :menu_item_scores do |t|
      t.integer :menu_item_id
      add_foreign_key :menu_item_scores, :menu_items, on_delete: :cascade
    end
  end
end
