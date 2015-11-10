class RenameCategories < ActiveRecord::Migration
  def change
    rename_table :categories, :restaurant_categories
  end
end
