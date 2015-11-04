class UserScore < ActiveRecord::Base
  attr_accessor :id, :created_at, :score
  belongs_to :user
  belongs_to :menu_item
end
