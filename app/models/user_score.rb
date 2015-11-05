class UserScore < ActiveRecord::Base
  attr :id, :created_at, :score
  belongs_to :user
  belongs_to :menu_item
end
