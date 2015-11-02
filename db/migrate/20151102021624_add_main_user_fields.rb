class AddMainUserFields < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name, null: false
      t.decimal :lastLatitude, :precision => 9, :scale => 6
      t.decimal :lastLongitude, :precision => 9, :scale => 6
      t.date :birthday, null:false
    end
  end
end
