# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_search_categories
  SearchCategory.find_or_create_by(:category => 'entree')
  SearchCategory.find_or_create_by(:category => 'appetizer')
  SearchCategory.find_or_create_by(:category => 'side')
  SearchCategory.find_or_create_by(:category => 'dessert')
  SearchCategory.find_or_create_by(:category => 'beer')
  SearchCategory.find_or_create_by(:category => 'wine')
  SearchCategory.find_or_create_by(:category => 'cocktail')
  SearchCategory.find_or_create_by(:category => 'beverage')
end

def create_restaurant_categories
  RestaurantCategory.find_or_create_by(:category => 'Chinese')
  RestaurantCategory.find_or_create_by(:category => 'Vietnamese')
  RestaurantCategory.find_or_create_by(:category => 'Korean')
  RestaurantCategory.find_or_create_by(:category => 'Kosher')
  RestaurantCategory.find_or_create_by(:category => 'Hebrew')
  RestaurantCategory.find_or_create_by(:category => 'Japanese')
  RestaurantCategory.find_or_create_by(:category => 'Sushi')
  RestaurantCategory.find_or_create_by(:category => 'Thai')
  RestaurantCategory.find_or_create_by(:category => 'Italian')
  RestaurantCategory.find_or_create_by(:category => 'American')
  RestaurantCategory.find_or_create_by(:category => 'Pizza')
  RestaurantCategory.find_or_create_by(:category => 'Deli')
  RestaurantCategory.find_or_create_by(:category => 'Barbecue')
  RestaurantCategory.find_or_create_by(:category => 'Burgers')
  RestaurantCategory.find_or_create_by(:category => 'Indian')
  RestaurantCategory.find_or_create_by(:category => 'Mediterranean')
  RestaurantCategory.find_or_create_by(:category => 'Caribbean')
  RestaurantCategory.find_or_create_by(:category => 'Mongolian')
  RestaurantCategory.find_or_create_by(:category => 'Bar/Pub')
  RestaurantCategory.find_or_create_by(:category => 'Soul Food')
  RestaurantCategory.find_or_create_by(:category => 'Mexican')
  RestaurantCategory.find_or_create_by(:category => 'Sandwiches')
end

def create_restaurants
  Restaurant.find_or_create_by(:name => 'Qdoba Mexican Grill', :latitude => 42.339810,
                               :longitude => -71.092821,
                               :picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/1-dev/restaurant.jpg',
                               :description => 'Bacon ipsum dolor amet turducken filet mignon pork beef ribs corned beef landjaeger sausage. Biltong hamburger prosciutto kielbasa, filet mignon venison turducken turkey tail.',
                               :restaurant_category_id => RestaurantCategory.find_by_category('Mexican')['id'])
  Restaurant.find_or_create_by(:name => "Chicken Lou's", :latitude => 42.339296, :longitude => -71.090202,
                               :picture_url => nil,
                               :description => 'Bacon ipsum dolor amet turducken filet mignon pork beef ribs corned beef landjaeger sausage. Biltong hamburger prosciutto kielbasa, filet mignon venison turducken turkey tail.',
                               :restaurant_category_id => RestaurantCategory.find_by_category('Deli')['id'])
end

def create_menu_item_categories
  MenuItemCategory.find_or_create_by(:category => 'Grill Dishes',
                                     :search_category_id => SearchCategory.find_by_category('entree')['id'],
                                     :restaurant_id => Restaurant.find_by_name('Qdoba Mexican Grill')['id'])
  MenuItemCategory.find_or_create_by(:category => 'Sandwiches',
                                     :search_category_id => SearchCategory.find_by_category('entree')['id'],
                                     :restaurant_id => Restaurant.find_by_name("Chicken Lou's")['id'])
  MenuItemCategory.find_or_create_by(:id => 3, :category => 'Not Sandwiches',
                                     :search_category_id => SearchCategory.find_by_category('side')['id'],
                                     :restaurant_id => Restaurant.find_by_name("Chicken Lou's")['id'])

end

def create_menu_items
  MenuItem.find_or_create_by(:name => 'Chicken Burrito',
                             :picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/1-dev/1.jpg',
                             :price => 7.43, :restaurant_id => Restaurant.find_by_name('Qdoba Mexican Grill')['id'],
                             :menu_item_category_id => MenuItemCategory.find_by_category('Grill Dishes')['id'])
  MenuItem.find_or_create_by(:name => 'Heavyweight TKO',
                             :picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/2-dev/2.jpg',
                             :price => 6.44, :restaurant_id => Restaurant.find_by_name("Chicken Lou's")['id'],
                             :menu_item_category_id => MenuItemCategory.find_by_category('Sandwiches')['id'])
  MenuItem.find_or_create_by(:name => 'Burrito Bowl',
                             :picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/1-dev/3.jpg',
                             :price => 6.93, :restaurant_id => Restaurant.find_by_name('Qdoba Mexican Grill')['id'],
                             :menu_item_category_id => MenuItemCategory.find_by_category('Grill Dishes')['id'])
  MenuItem.find_or_create_by(:name => 'Hectic Lou',
                             :picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/2-dev/4.jpg',
                             :price => 7.29, :restaurant_id => Restaurant.find_by_name("Chicken Lou's")['id'],
                             :menu_item_category_id => MenuItemCategory.find_by_category('Not Sandwiches')['id'])
end

def create_users
  u1 = User.create(:email => 'test1@example.com', :password => 'password', :password_confirmation => 'password')
  u2 = User.create(:email => 'test2@example.com', :password => 'password', :password_confirmation => 'password')
  u1['name'] = 'Tester One'
  u1['last_latitude'] = 42.332541
  u1['last_longitude'] = -71.100871
  u1['birthday'] = Date.parse('1995-08-08')
  u1.save
  u2['name'] = 'Tester One'
  u2['last_latitude'] = 42.342327
  u2['last_longitude'] = -71.091048
  u2['birthday'] = Date.parse('1992-08-08')
  u2.save
end

def create_user_pictures
  UserPicture.find_or_create_by(:picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/1-dev/1.jpg',
                                :menu_item_id => MenuItem.find_by_name('Chicken Burrito')['id'],
                                :user_id => User.find_by_email('test1@example.com')['id'])
  UserPicture.find_or_create_by(:picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/1-dev/3.jpg',
                                :menu_item_id => MenuItem.find_by_name('Chicken Burrito')['id'],
                                :user_id => User.find_by_email('test2@example.com')['id'])
  UserPicture.find_or_create_by(:picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/2-dev/2.jpg',
                                :menu_item_id => MenuItem.find_by_name('Heavyweight TKO')['id'],
                                :user_id => User.find_by_email('test2@example.com')['id'])
  UserPicture.find_or_create_by(:picture_url => 'https://s3-us-west-2.amazonaws.com/final.project/2-dev/4.jpg',
                                :menu_item_id => MenuItem.find_by_name('Hectic Lou')['id'],
                                :user_id => User.find_by_email('test2@example.com')['id'])
end

def create_user_scores
  UserScore.find_or_create_by(:score => 4, :user_id => User.find_by_email('test1@example.com')['id'],
                              :menu_item_id => MenuItem.find_by_name('Chicken Burrito')['id'])
  UserScore.find_or_create_by(:score => 3, :user_id => User.find_by_email('test1@example.com')['id'],
                              :menu_item_id => MenuItem.find_by_name('Heavyweight TKO')['id'])
  UserScore.find_or_create_by(:score => 5, :user_id => User.find_by_email('test1@example.com')['id'],
                              :menu_item_id => MenuItem.find_by_name('Burrito Bowl')['id'])
  UserScore.find_or_create_by(:score => 2, :user_id => User.find_by_email('test1@example.com')['id'],
                              :menu_item_id => MenuItem.find_by_name('Hectic Lou')['id'])
  UserScore.find_or_create_by(:score => 4, :user_id => User.find_by_email('test2@example.com')['id'],
                              :menu_item_id => MenuItem.find_by_name('Chicken Burrito')['id'])
  UserScore.find_or_create_by(:score => 3, :user_id => User.find_by_email('test2@example.com')['id'],
                              :menu_item_id => MenuItem.find_by_name('Heavyweight TKO')['id'])
  UserScore.find_or_create_by(:score => 1, :user_id => User.find_by_email('test2@example.com')['id'],
                              :menu_item_id => MenuItem.find_by_name('Burrito Bowl')['id'])
  UserScore.find_or_create_by(:score => 5, :user_id => User.find_by_email('test2@example.com')['id'],
                              :menu_item_id => MenuItem.find_by_name('Hectic Lou')['id'])
end

if Rails.env == "development"
  create_search_categories
  create_restaurant_categories
  create_restaurants
  create_menu_item_categories
  create_menu_items
  create_users
  create_user_pictures
  create_user_scores
end