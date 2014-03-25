class Manga < ActiveRecord::Base

  has_many :manga_genres
  has_many :genre, through: :manga_genres
  has_many :volumes, class_name: "Manga::Volume"

  mount_uploader :image, MangaUploader

end
