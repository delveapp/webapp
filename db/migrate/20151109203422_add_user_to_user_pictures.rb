class AddUserToUserPictures < ActiveRecord::Migration
  def change
    change_table :user_pictures do |t|
      t.integer :user_id

      add_foreign_key :user_pictures, :users
    end
  end
end