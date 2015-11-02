class RenameUserLatitudeLongitude < ActiveRecord::Migration
  def change
    rename_column :users, :lastLongitude, :last_longitude
    rename_column :users, :lastLatitude, :last_latitude

    change_column_default :users, :name, ""
  end
end
