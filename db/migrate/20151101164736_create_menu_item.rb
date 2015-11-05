class CreateMenuItem < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :picture_url
      t.decimal :price, precision: 4, scale: 2
      t.timestamps null:false
    end
  end
end
