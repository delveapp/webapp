class AddDescriptionColumnToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :description, :text, :default => nil
  end
end
