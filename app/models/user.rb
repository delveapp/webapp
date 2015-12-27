class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :restaurant_admins

  def as_json(options = nil)
    super({only: [:id, :email, :name, :last_latitude, :last_longitude, :birthday],
           include: [:restaurant_admins]}.merge(options || {}))
  end
end
