# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SearchCategory.find_or_create_by(:category => 'entree')
SearchCategory.find_or_create_by(:category => 'appetizer')
SearchCategory.find_or_create_by(:category => 'side')
SearchCategory.find_or_create_by(:category => 'dessert')
SearchCategory.find_or_create_by(:category => 'beer')
SearchCategory.find_or_create_by(:category => 'wine')
SearchCategory.find_or_create_by(:category => 'cocktail')
SearchCategory.find_or_create_by(:category => 'beverage')

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

if Rails.env == "development"

end