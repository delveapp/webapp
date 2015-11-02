class AddUserPicturesForeignKey < ActiveRecord::Migration
  def change
    change_table :user_pictures do |t|
      t.integer :menu_item_id

      add_foreign_key :user_pictures, :menu_items
    end
  end
end
