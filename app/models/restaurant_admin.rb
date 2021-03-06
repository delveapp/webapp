#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

class RestaurantAdmin < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  def as_json(options = nil)
    super({ only: [], include: [:restaurant] }.merge(options || {}))
  end
end
