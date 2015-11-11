class MenuItem < ActiveRecord::Base
  attr :id, :name, :picture_url, :price, :created_at, :updated_at
  belongs_to :restaurant
  belongs_to :category
  has_many :user_pictures
  has_many :user_scores
  has_one :menu_item_score
  has_one :menu_item_category
end
