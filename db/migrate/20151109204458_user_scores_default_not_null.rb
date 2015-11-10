class UserScoresDefaultNotNull < ActiveRecord::Migration
  def change

    change_column_null :user_scores, :menu_item_id, false
    change_column_null :user_scores, :user_id, false
    change_column_null :user_scores, :created_at, false
    change_column_null :user_scores, :score, false

    change_column_default :user_scores, :score, 0

  end
end
