class AddForeignKeyUserPictures < ActiveRecord::Migration
  def change
    change_table :user_pictures do |t|
      remove_foreign_key :user_pictures, :users
    end

    change_table :user_pictures do |t|
      add_foreign_key :user_pictures, :users, on_delete: :cascade
    end
  end
end
