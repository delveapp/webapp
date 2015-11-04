class MenuItemScore < ActiveRecord::Base
  attr_accessor :id, :score, :updated_at
  belongs_to :menu_item
end
