class MenuItem < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :menu_item_category
  has_many :user_pictures
  has_many :user_scores
  has_one :menu_item_score
  has_one :menu_item_category
end
