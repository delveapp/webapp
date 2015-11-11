class Restaurant < ActiveRecord::Base
  attr :description, :id, :picture_url, :name, :latitude, :longitude, :created_at, :updated_at
  has_many :menu_items
  has_one :restaurant_category
end
