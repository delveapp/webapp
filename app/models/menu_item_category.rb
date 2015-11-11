class MenuItemCategory < ActiveRecord::Base
  attr :id, :category, :search_category_id, :restaurant_id
  has_one :search_category_id
  has_one :restaurant_id
  belongs_to :menu_items
end
