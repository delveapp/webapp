class Restaurant < ActiveRecord::Base
  attr :score
  has_many :menu_items
  belongs_to :restaurant_category

  def get_restaurant_data
    restaurant = self.as_json
    menu_items = self.menu_items.as_json
    score_array = []
    menu_items.each do |item|
      score_array.push(item['menu_item_score']['score'])
    end
    restaurant['score'] = score_array.inject(0.0) { |sum, el| sum + el } / score_array.size
    {restaurant: restaurant, menu_items: menu_items}
  end

  def as_json(options = nil)
    super({ only: [:id, :name, :latitude, :longitude, :picture_url, :address, :description], include: [:restaurant_category]}.merge(options || {}))
  end

  reverse_geocoded_by :latitude, :longitude, :address => :location
end
