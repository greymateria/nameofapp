# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# run rails db:seed in terminal after making changes to this file

#example: 
#Product.create(:name => "seed-generated product", :description => "I also created this product without using the HTML form!")

Product.create([
	{ :name => "Cat 1", :description => "A brown cat", :colour => "Brown", :price => 500, :image_url => "https://www.royalcanin.com/~/media/Royal-Canin/Product-Categories/cat-breed-landing-hero.ashx"},

	{ :name => "Cat 2", :description => "An orange cat", :colour => "Orange", :price => 500, :image_url => "http://www.royalcanin.ca/~/media/Royal-Canin-Canada/Product-Categories/cat-adult-landing-hero.ashx"},

	{ :name => "Cat 3", :description => "A grey cat", :colour => "Grey", :price => 500, :image_url => "http://www.royalcanin.ca/~/media/Royal-Canin-Canada/Product-Categories/cat-senior-landing-hero.ashx"},

])