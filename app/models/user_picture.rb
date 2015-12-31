#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

class UserPicture < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :user #do we want this relation?
end
