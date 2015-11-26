class UserPicture < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :user #do we want this relation?
end
