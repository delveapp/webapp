class RestaurantAdmin < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  def as_json(options = nil)
    super({ only: [:id, :name, :picture_url, :price, :description], include: [:menu_item_score, :user_pictures, :restaurant] }.merge(options || {}))
  end
end
