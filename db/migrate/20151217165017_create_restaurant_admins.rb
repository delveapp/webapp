class CreateRestaurantAdmins < ActiveRecord::Migration
  def change
    create_table :restaurant_admins do |t|
      t.integer :user_id, null: false
      t.integer :restaurant_id, null: false
      t.timestamps null: false
    end

    add_foreign_key :restaurant_admins, :users, on_delete: :cascade
    add_foreign_key :restaurant_admins, :restaurants, on_delete: :cascade
  end
end
