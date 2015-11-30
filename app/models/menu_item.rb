class MenuItem < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :menu_item_category
  has_many :user_pictures
  has_many :user_scores
  has_one :menu_item_score
  # has_one :menu_item_category

  def as_json(options = nil)
    super({ only: [:id, :name, :picture_url, :price, :description], include: [:menu_item_score, :user_pictures, :restaurant] }.merge(options || {}))
  end

  def self.find_top_menu_items(latitude = 0, longitude = 0, range_miles = 5)
    menu_items = []
    restaurants = Restaurant.near([latitude, longitude], range_miles)
    restaurants.each do |r|
      MenuItem.find_by_sql("SELECT * FROM menu_items AS m INNER JOIN menu_item_scores AS mis on m.id=mis.menu_item_id WHERE m.restaurant_id=#{r['id']};").each do |m|
        menu_items.push m
      end
    end
    return menu_items.as_json.sort { |a, b| b['menu_item_score']['score'] <=> a['menu_item_score']['score'] }
  end
end
