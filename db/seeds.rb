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

#why are you doing this?
#Not sure, my previous partner was working on the seeds and database portion. I worked on the views and
#responsive portion of the site.
#Dir[Rails.root.join("lib/seeds/**/*.rb")].each {|f| require f}

#MangaSeeds.seed_mangas
#MangaVolumesSeeds.seed_volume
#put the csv in this path.
#the ./ path would be root within the ManaBytes project directory? I am not sure which path that is.
#  . means current directory i.e. Rails.root/db/
#Ah, got it. Thanks! I am finishing the csv now and will add it to this path. Should be a few minutes.
# then pause the session
#Paused, i'll update once complete 
# don't close team viewer session while doing that.
#Sure, got it.
require 'csv'
puts data = CSV.read("#{Rails.root}/db/mb_data2.csv") 
data[1..-1].each do |row|
  genres = []
  genres = row[1].split(',').map do |name|
    Genre.find_or_create_by_name(name: name)
  end.compact
  manga = Manga.new(title: row[0], genre: genres, start_publish_date: row[2])
  manga.image = File.open("#{Rails.root}/public/Manga_Images_Upload/#{row[3]}")
  manga.save!
end
#thats it!!!!
#nice, now from here we save the file and the rails db:seed ? I forgot the
#exact step of commands.
#yes rake db:seed, try and run and if there is any bug in this seed script.
#Sounds great, let me copy and paste this seed script into codementor real quick and
#just review which each section means for my understanding