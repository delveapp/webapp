class CreateSearchCategories < ActiveRecord::Migration
  def change
    create_table :search_categories do |t|
      t.string :category, null: false, default: ""
    end
  end
end
