class MangaGenre < ActiveRecord::Base
  belongs_to :genre
  belongs_to :manga
end
