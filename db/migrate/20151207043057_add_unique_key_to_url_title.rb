class AddUniqueKeyToUrlTitle < ActiveRecord::Migration
  def change
    add_index :restaurants, :url_title, unique: true
  end
end
