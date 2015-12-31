#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

class RestaurantController < ApplicationController
  def get_restaurant_by_url_title
    if params[:url_title] && params[:url_title].length > 0
      restaurant = Restaurant.find_by(:url_title => params[:url_title])
      if restaurant && restaurant != nil
        data = restaurant.get_restaurant_data
        if data && data != nil
          render :json => data
        else
          render :json => {:error => 'Could not retrieve restaurant data'}
        end
      else
        render :json => {:error => 'Could not find restaurant'}
      end
    else
      render :json => {:error => 'URL is incorrect'}
    end
  end
end