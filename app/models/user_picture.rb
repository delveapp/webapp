class UserPicture < ActiveRecord::Base
  attr_accessor :id, :picture_url, :created_at
  belongs_to :menu_item
  belongs_to :user #do we want this relation?
end
