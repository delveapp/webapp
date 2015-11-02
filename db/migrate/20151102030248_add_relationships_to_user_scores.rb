class AddRelationshipsToUserScores < ActiveRecord::Migration
  def change
    change_table :user_scores do |t|
      t.integer :user_id
      t.integer :menu_item_id

      add_foreign_key :user_scores, :users
      add_foreign_key :user_scores, :menu_items
    end
  end
end
