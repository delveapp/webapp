class UserPicturesDefaultNotNull < ActiveRecord::Migration
  def change

    change_column_null :user_pictures, :menu_item_id, false
    change_column_null :user_pictures, :user_id, false

  end
end

