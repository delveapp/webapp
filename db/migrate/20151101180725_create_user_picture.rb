class CreateUserPicture < ActiveRecord::Migration
  def change
    create_table :user_pictures do |t|
      t.string :picture_url, null: false
      t.timestamp :created_at, null: false
    end
  end
end
