class MenuItemScore < ActiveRecord::Base
  attr :id, :score, :updated_at
  belongs_to :menu_item
end
