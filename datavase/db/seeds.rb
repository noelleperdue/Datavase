# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

# Plant.destroy_all

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'species.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Plant.new
#   t.name = row['name']
#   t.description = row['description']
#   t.save
# end

# MapMarker.destroy_all
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'map.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   map = MapMarker.new
#   map.lat = row['lat']
#   map.lng = row['lng']
#   name = row['name']
#   plant = Plant.find_by_name(name)
#   map.plant_id = plant.id
#   map.save
# end
# puts "Map markers seeded successfully"

Image.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'links.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  img = Image.new
  name = row['name']
  img.plant_name = name
  img.link = row['link']
  plant = Plant.find_by_name(name)
  img.plant_id = plant.id
  img.save
end
puts "Images seeded successfully"
