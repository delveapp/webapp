class CreateMenuItemScoresAutomatically < ActiveRecord::Migration
  def self.up
    execute 'DROP TRIGGER IF EXISTS create_menu_item_score'

    sql = <<-SQL
    CREATE TRIGGER create_menu_item_score AFTER INSERT ON menu_items
    FOR EACH ROW
    INSERT INTO menu_item_scores (score, updated_at, menu_item_id) VALUES (0.00, NOW(), NEW.id);
    SQL

    execute sql
  end
end
