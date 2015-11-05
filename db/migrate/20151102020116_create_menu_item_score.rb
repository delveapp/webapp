class CreateMenuItemScore < ActiveRecord::Migration
  def change
    create_table :menu_item_scores do |t|
      t.decimal :score, precision: 3, scale: 2, null: false
      t.timestamp :updated_at, null:false
    end
  end
end
