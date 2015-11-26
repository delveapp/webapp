class MenuItemCategory < ActiveRecord::Base
  has_one :restaurant
  has_many :menu_item
  belongs_to :search_category
end
