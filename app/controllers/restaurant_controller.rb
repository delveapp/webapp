class RestaurantController < ApplicationController
  def get_restaurant_by_url_title
    if params[:url_title] && params[:url_title].length > 0
      restaurant = Restaurant.find_by(:url_title => params[:url_title])
      data = {}
      data['restaurant'] = restaurant
      if restaurant != nil
        data['menu_items'] = []
        restaurant.menu_items.each do |menu_item|
          data['menu_items'].push menu_item
        end
      end
      render :json => data
    else
      render :json => {:error => 'could not find restaurant'}
    end
  end
end