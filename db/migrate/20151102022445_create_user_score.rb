class CreateUserScore < ActiveRecord::Migration
  def change
    create_table :user_scores do |t|
      t.integer :score
      t.timestamp :created_at
    end
  end
end
