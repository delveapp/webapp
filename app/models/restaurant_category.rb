class RestaurantCategory < ActiveRecord::Base
  attr :id, :category
  belongs_to :restaurant #may need to change
end
