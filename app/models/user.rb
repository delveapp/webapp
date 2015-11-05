class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr :id, :email, :encrypted_password, :birthday, :last_longitude, :last_latitude, :name, :updated_at, :created_at
  has_many :user_scores
  has_many :user_pictures #do we want this relation?
end
