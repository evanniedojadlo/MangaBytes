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
Dir[Rails.root.join("lib/seeds/**/*.rb")].each {|f| require f}
MangaSeeds.seed_mangas
MangaVolumesSeeds.seed_volumes