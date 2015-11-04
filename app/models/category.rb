class Category < ActiveRecord::Base
  attr_accessor :id, :category
  has_many :menu_items
end
