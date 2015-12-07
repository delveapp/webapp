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
  RestaurantCategory.find_or_create_by(:category => 'Ethiopian')
  RestaurantCategory.find_or_create_by(:category => 'French')
  RestaurantCategory.find_or_create_by(:category => 'Raw Bar')
  RestaurantCategory.find_or_create_by(:category => 'American Southern')
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
  Restaurant.find_or_create_by(:name => "Eastern Standard", :address => "528 Commonwealth Ave Boston MA 02215", :url_title => '"eastern-standard-boston"', :restaurant_category_id => RestaurantCategory.find_by_category('French')['id'], :latitude => 42.348550, :longitude => -71.096007, :picture_url => nil)
  Restaurant.find_or_create_by(name: "Island Creek Oyster Bar", :address => "500 Commonwealth Avenue, Boston, MA 02215", :url_title => 'island-creek-oyster-bar-boston', :restaurant_category_id => RestaurantCategory.find_by_category('Raw Bar')['id'], :latitude => 42.348628, :longitude => -71.095223, :picture_url => nil)
  Restaurant.find_or_create_by(name: "Lucy Ethiopian Cafe", :address => "334 Massachusetts Ave, Boston, MA 02115", :url_title => 'lucy-ethiopian-cafe-boston', :restaurant_category_id => RestaurantCategory.find_by_category('Ethiopian')['id'], :latitude => 42.342673, :longitude => -71.084239, :picture_url => nil)
  Restaurant.find_or_create_by(name: "Sunset Grill & Tap", :address => "130 Brighton Ave, Allston, MA 02134", :url_title => 'sunset-grill-and-tap-boston', :restaurant_category_id => RestaurantCategory.find_by_category('Bar/Pub')['id'], :latitude => 42.352746, :longitude => -71.131565, :picture_url => nil)
  Restaurant.find_or_create_by(name: "O Ya", :address => "9 East St, Boston, MA 02111", :url_title => 'o-ya-boston', :restaurant_category_id => RestaurantCategory.find_by_category('Japanese')['id'], :latitude => 42.351352, :longitude => -71.056923, :picture_url => nil)
  Restaurant.find_or_create_by(name: "Jerry Remy's Seaport", :address => "250 Northern Ave, Boston, MA 02210", :url_title => 'jerry-remys-seaport-boston', :restaurant_category_id => RestaurantCategory.find_by_category('Bar/Pub')['id'], :latitude => 42.348905, :longitude => -71.038268, :picture_url => nil)
  Restaurant.find_or_create_by(name: "The Friendly Toast", :address => "1 Kendall Square, Cambridge, MA 02139", :url_title => 'the-friendly-toast-cambridge', :restaurant_category_id => RestaurantCategory.find_by_category('American')['id'], :latitude => 42.367815, :longitude => -71.090060, :picture_url => nil)
  Restaurant.find_or_create_by(name: "Devlin's", :address => "332 Washington St, Brighton, MA 02135", :url_title => 'devlins-brighton', :restaurant_category_id => RestaurantCategory.find_by_category('American')['id'], :latitude => 42.348869, :longitude => -71.152320, :picture_url => nil)
  Restaurant.find_or_create_by(name: "Highland Kitchen", :address => "150 Highland Ave, Somerville, MA 02143", :url_title => 'highland-kitchen-somerville', :restaurant_category_id => RestaurantCategory.find_by_category('American Southern')['id'], :latitude => 42.388190, :longitude => -71.103254, :picture_url => nil)
  Restaurant.find_or_create_by(name: "Coppa", :address => "253 Shawmut Ave, Boston, MA 02118", :url_title => 'coppa-boston', :restaurant_category_id => RestaurantCategory.find_by_category('Italian')['id'], :latitude => 42.343462, :longitude => -71.068734, :picture_url => nil)
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
  MenuItemCategory.find_or_create_by(:category => "Entree", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("Eastern Standard")['id'])
  MenuItemCategory.find_or_create_by(:category => "Sandwiches", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("Eastern Standard")['id'])
  MenuItemCategory.find_or_create_by(:category => "Lunch", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("Island Creek Oyster Bar")['id'])
  MenuItemCategory.find_or_create_by(:category => "Shore Food", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("Island Creek Oyster Bar")['id'])
  MenuItemCategory.find_or_create_by(:category => "Appetizers", :search_category_id => SearchCategory.find_by_category('appetizer')['id'], :restaurant_id => Restaurant.find_by_name("Lucy Ethiopian Cafe")['id'])
  MenuItemCategory.find_or_create_by(:category => "Vegetarian Entree", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("Lucy Ethiopian Cafe")['id'])
  MenuItemCategory.find_or_create_by(:category => "Appeteasers", :search_category_id => SearchCategory.find_by_category('appetizer')['id'], :restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'])
  MenuItemCategory.find_or_create_by(:category => "Mr. Potato Head", :search_category_id => SearchCategory.find_by_category('appetizer')['id'], :restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'])
  MenuItemCategory.find_or_create_by(:category => "Wet Your Noodle Pastas", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'])
  MenuItemCategory.find_or_create_by(:category => "Pork", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("O Ya")['id'])
  MenuItemCategory.find_or_create_by(:category => "Japanse Wagyu Beef", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("O Ya")['id'])
  MenuItemCategory.find_or_create_by(:category => "Starters", :search_category_id => SearchCategory.find_by_category('appetizer')['id'], :restaurant_id => Restaurant.find_by_name("Jerry Remy's Seaport")['id'])
  MenuItemCategory.find_or_create_by(:category => "Breakfast Staples",:search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("The Friendly Toast")['id'])
  MenuItemCategory.find_or_create_by(:category => "Appetizers", :search_category_id => SearchCategory.find_by_category('appetizer')['id'], :restaurant_id => Restaurant.find_by_name("Devlin's")['id'])
  MenuItemCategory.find_or_create_by(:category => "Appetizers + Small Plates", :search_category_id => SearchCategory.find_by_category('appetizer')['id'], :restaurant_id => Restaurant.find_by_name("Highland Kitchen")['id'])
  MenuItemCategory.find_or_create_by(:category => "Main Courses", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("Highland Kitchen")['id'])
  MenuItemCategory.find_or_create_by(:category => "Antipasti", :search_category_id => SearchCategory.find_by_category('appetizer')['id'], :restaurant_id => Restaurant.find_by_name("Coppa")['id'])
  MenuItemCategory.find_or_create_by(:category => "La Nostra Pasta", :search_category_id => SearchCategory.find_by_category('entree')['id'], :restaurant_id => Restaurant.find_by_name("Coppa")['id'])
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
  MenuItem.find_or_create_by(:name => "Moules Provençal", :description => "tomato, fennel, white wine", :restaurant_id => Restaurant.find_by_name("Eastern Standard")['id'], :price => 12.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Eastern Standard")['id'], :category => "Entree").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "E.S Chopped Salad", :description => "breaded chicken, parmesan, bacon creamy herb dressing", :restaurant_id => Restaurant.find_by_name("Eastern Standard")['id'], :price => 13.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Eastern Standard")['id'], :category => "Entree").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "French Dip", :description => "gruyere, beef jus", :restaurant_id => Restaurant.find_by_name("Eastern Standard")['id'], :price => 12.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Eastern Standard")['id'], :category => "Sandwiches").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Grilled Faroe Island Salmon", :description => "mustard spaetzle, grilled corn, spinach", :restaurant_id => Restaurant.find_by_name("Island Creek Oyster Bar")['id'], :price => 18.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Island Creek Oyster Bar")['id'], :category => "Lunch").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Ethel's Lobster Roll", :description => "kettle chips, cole slaw, rosemary roll", :restaurant_id => Restaurant.find_by_name("Island Creek Oyster Bar")['id'], :price => 25.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Island Creek Oyster Bar")['id'], :category => "Shore Food").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Ayib Tikl", :description => "cotton cheese seasoned with mitmita (ethiopian cayenne blend) and extra virgin olive oil, rolled in injera and cut into bite-size pieces", :restaurant_id => Restaurant.find_by_name("Lucy Ethiopian Cafe")['id'], :price => 6.50, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Lucy Ethiopian Cafe")['id'], :category => "Appetizers").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Attkilt Combo", :description => "miser wot (red lentils simmered in spicy hot sauce). gomen (fresh collard green simmered in mild sauce, seasoned with spice and herbs). tikile gomen (cabbage and potatoes simmered in mild sauce)", :restaurant_id => Restaurant.find_by_name("Lucy Ethiopian Cafe")['id'], :price => 8.99, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Lucy Ethiopian Cafe")['id'], :category => "Vegetarian Entree").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "B-B-Q Pulled Pork Sliders", :description => "Mini butter toasted rolls with tender b-b-q slathered pulled pork topped with cheddar cheese and served with a mini side of sweet potato fries, sun-fried cranberry scallion cole slaw and pickles", :restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'], :price => 10.99, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'], :category => "Appeteasers").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Creamy Spinach & Artichoke Skins", :description => "Our spinach & artichoke dip topped with shaved parmesan cheese.", :restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'], :price => 8.99, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'], :category => "Mr. Potato Head").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Cajun Chicken Tortellini", :description => "Chicken tenderloins sauteed and simmered in a cajun cream sauce, tossed with tri-colored tortellini and topped with scallions", :restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'], :price => 13.99, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Sunset Grill & Tap")['id'], :category => "Wet Your Noodle Pastas").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Okinawan Braised Pork", :description => "boston baked heirloom rice beans, house kimchee, soy maple", :restaurant_id => Restaurant.find_by_name("O Ya")['id'], :price => 18.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("O Ya")['id'], :category => "Pork").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Nikujaga Soy Braised Strip Loin", :description => "carrots, turnips, and daikon", :restaurant_id => Restaurant.find_by_name("O Ya")['id'], :price => 34.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("O Ya")['id'], :category => "Japanse Wagyu Beef").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Crispy Calamari", :description => "cherry peppers, marinara dipping sauce", :restaurant_id => Restaurant.find_by_name("Jerry Remy's Seaport")['id'], :price => 13.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Jerry Remy's Seaport")['id'], :category => "Starters").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Thai Chicken Bites", :description => "crispy tenders, sweet and spicy", :restaurant_id => Restaurant.find_by_name("Jerry Remy's Seaport")['id'], :price => 11.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Jerry Remy's Seaport")['id'], :category => "Starters").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Egg Sandwich", :description => "two eggs any way, on any homemade bread, grilled biscuit, english muffin, or bagel & your choice of cheese", :restaurant_id => Restaurant.find_by_name("The Friendly Toast")['id'], :price => 8.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("The Friendly Toast")['id'], :category => "Breakfast Staples").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Biscuits & Gravy", :description => "our made-from-scratch biscuit topped with grilled tomatoes, real or vegetarian sausage, two over easy eggs, & white pepper gravy", :restaurant_id => Restaurant.find_by_name("The Friendly Toast")['id'], :price => 12.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("The Friendly Toast")['id'], :category => "Breakfast Staples").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Nachos", :description => "jack cheese, black bean, scallion, jalapeno, pico de gallo, sour cream, guacamole", :restaurant_id => Restaurant.find_by_name("Devlin's")['id'], :price => 10.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Devlin's")['id'], :category => "Appetizers").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Fall Caprese", :description => "blackberries, local buratta, torn basil, baby heirloom tomato, imported prosciutto, e.v.o.o., aged balsamic", :restaurant_id => Restaurant.find_by_name("Devlin's")['id'], :price => 14.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Devlin's")['id'], :category => "Appetizers").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Falafel Plate", :description => "hummus, quinoa tabbouleh, & Tahini sauce", :restaurant_id => Restaurant.find_by_name("Highland Kitchen")['id'], :price => 8.95, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Highland Kitchen")['id'], :category => "Appetizers + Small Plates").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Pan Roasted Boneless Half Chicken", :description => "sweet potato hash, broccolini, herb gravy", :restaurant_id => Restaurant.find_by_name("Highland Kitchen")['id'], :price => 17.95, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Highland Kitchen")['id'], :category => "Main Courses").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Insalata Di Casa", :description => "Little gems, red wine vinegar, Diomede extra virgin olive oil", :restaurant_id => Restaurant.find_by_name("Coppa")['id'], :price => 8.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Coppa")['id'], :category => "Antipasti").first['id'], :picture_url => nil)
  MenuItem.find_or_create_by(:name => "Rigatoni con Sugo", :description => "Extruded Pasta with work sugo, sage and parmesan", :restaurant_id => Restaurant.find_by_name("Coppa")['id'], :price => 23.00, :menu_item_category_id => MenuItemCategory.where(:restaurant_id => Restaurant.find_by_name("Coppa")['id'], :category => "La Nostra Pasta").first['id'], :picture_url => nil)
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

def update_restaurant_info
  qdoba = Restaurant.where(:name => 'Qdoba Mexican Grill', :latitude => 42.339810, :longitude => -71.092821).first
  lous = Restaurant.where(:name => "Chicken Lou's", :latitude => 42.339296, :longitude => -71.090202).first
  qdoba['address'] = '393 Huntington Ave, Boston, MA 02115'
  qdoba['url_title'] = 'qdoba+mexican+grill+boston'
  qdoba.save
  lous['address'] = '50 Forsyth St, Boston, MA 02115'
  lous['url_title'] = 'chicken+lous+boston'
  lous.save
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
  update_restaurant_info
end