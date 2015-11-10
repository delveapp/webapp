class MenuItemScoresDefaultZero < ActiveRecord::Migration
  def change
    change_column_default :menu_item_scores, :score, 0
  end
end
