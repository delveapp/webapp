class HomeController < ApplicationController
  def index
  end

  def search_by_user_selected_category
    if params[:search_category] == 'restaurant_name'
      search_results = Restaurant.where(name: params[:search_criteria])
    elsif params[:search_category] == 'restaurant_category'
      search_results = Restaurant.joins(:restaurant_category).where('restaurant_categories.category' => params[:search_criteria])
    elsif params[:search_category] == 'menu_item_name'
      search_results = MenuItem.where(name: params[:search_criteria])
    elsif params[:search_category] == 'menu_item_type'
      search_results = MenuItem.joins(menu_item_category: :search_category).where('search_categories.category' => params[:search_criteria])
      search_results.merge!(MenuItem.joins(menu_item_category: :search_category).where('menu_item_categories.category' => params[:search_criteria]))
    end
    render :json => {:success => true, :data => search_results.as_json}
  end
end