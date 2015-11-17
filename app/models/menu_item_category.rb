class MenuItemCategory < ActiveRecord::Base
  attr :id, :category, :search_category_id, :restaurant_id
  has_one :restaurant
  has_many :menu_item
  belongs_to :search_category
end
