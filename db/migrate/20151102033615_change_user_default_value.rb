class ChangeUserDefaultValue < ActiveRecord::Migration
  def change

    change_column_null :users, :birthday, true
    
  end
end
