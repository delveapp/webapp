class Restaurant < ActiveRecord::Base
  attr_accessor :description, :id, :picture_url, :name, :latitude, :longitude, :created_at, :updated_at
  has_many :menu_items
end
