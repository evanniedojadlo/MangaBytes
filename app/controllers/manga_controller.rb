class MangaController < ApplicationController
	def index
		@mangas = Manga.order(:name)
	end

def show
	@mangas = Manga.find(params[:id])
	end
end