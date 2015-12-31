#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

class MenuItemCategory < ActiveRecord::Base
  has_one :restaurant
  has_many :menu_item
  belongs_to :search_category
end
