class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category, null: false
    end
  end
end
