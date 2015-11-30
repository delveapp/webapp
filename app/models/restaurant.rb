class Restaurant < ActiveRecord::Base
  has_many :menu_items
  belongs_to :restaurant_category
end
