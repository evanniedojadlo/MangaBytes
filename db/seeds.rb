# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
##
##
##
##
##
##
##
##
##
## THIS IS A TEST

#Dir[Rails.root.join("lib/seeds/**/*.rb")].each {|f| require f}

#MangaSeeds.seed_mangas
#MangaVolumesSeeds.seed_volume

require 'csv'
puts data = CSV.read("#{Rails.root}/db/mb_data2.csv") 
data[1..-1].each do |row|
  genres = []
  genres = row[1].split(',').map do |name|
    Genre.find_or_create_by_name(name: name)
  end.compact
  manga = Manga.new(title: row[0], genre: genres, start_publish_date: row[2])
  manga.image = File.open("#{Rails.root}/public/Manga_Images_Upload/#{row[3]}")
  puts  manga.save
  #puts response
end
