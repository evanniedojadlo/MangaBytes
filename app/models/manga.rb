class Manga < ActiveRecord::Base

  has_many :manga_genres
  has_many :genre, through: :manga_genres
  has_many :volumes, class_name: "Manga::Volume"

  mount_uploader :image, MangaUploader

  include Tire::Model::Search
  include Tire::Model::Callbacks

  def self.search(params)
  	tire.search(load: true) do
  		query { string params[:query] } if params[:query].present?
  	end
  end
end
