class Restaurant < ActiveRecord::Base
  attr :description, :id, :picture_url, :name, :latitude, :longitude, :created_at, :updated_at
  has_many :menu_items
  belongs_to :restaurant_category
end
