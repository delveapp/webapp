class RestaurantCategory < ActiveRecord::Base
  attr :id, :category
  has_many :restaurant #may need to change
end
