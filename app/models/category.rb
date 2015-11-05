class Category < ActiveRecord::Base
  attr :id, :category
  has_many :menu_items
end
