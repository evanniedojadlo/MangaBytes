class Manga < ActiveRecord::Base

  has_many :manga_genres
  has_many :genre, through: :manga_genres

end
