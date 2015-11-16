class MenuItemCategory < ActiveRecord::Base
  attr :id, :category, :search_category_id, :restaurant_id
  has_one :restaurant_id
  belongs_to :menu_items
  belongs_to :search_category
end
