class AddColumnsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :address, :string, :default => "", :null => false
    add_column :restaurants, :url_title, :string, :default => nil
  end
end
