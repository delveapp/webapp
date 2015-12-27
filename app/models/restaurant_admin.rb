class RestaurantAdmin < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  def as_json(options = nil)
    super({ only: [], include: [:restaurant] }.merge(options || {}))
  end
end
