class DeleteMenuItemScoreTrigger < ActiveRecord::Migration
  def self.up
    execute 'DROP TRIGGER IF EXISTS update_menu_item_score_delete'

    sql = <<-SQL
      CREATE TRIGGER update_menu_item_score_delete AFTER DELETE ON user_scores
      FOR EACH ROW
      UPDATE menu_item_scores
      SET menu_item_scores.score = (SELECT AVG(user_scores.score) FROM user_scores WHERE user_scores.menu_item_id=OLD.menu_item_id)
      WHERE menu_item_scores.menu_item_id=OLD.menu_item_id;
    SQL

    execute sql
  end
end
