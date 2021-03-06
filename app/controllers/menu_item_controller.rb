#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

class MenuItemController < ApplicationController
  def get_menu_item_by_id
    if params[:menu_item_id] && params[:menu_item_id].length > 0
      item = MenuItem.find_by_id(params[:menu_item_id])
      if item && item != nil
        data = item.as_json
        if data && data != nil
          render :json => data
        else
          render :json => {:error => 'Could not retrieve menu item data'}
        end
      else
        render :json => {:error => 'Could not find menu item'}
      end
    else
      render :json => {:error => 'URL is incorrect'}
    end
  end
end