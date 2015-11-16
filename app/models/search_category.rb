class SearchCategory < ActiveRecord::Base
  attr :id, :category
  has_many :menu_item_category
end
