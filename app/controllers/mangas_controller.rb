class MangasController < ApplicationController
	before_filter :authenticate_user!

  def index
  	if params[:query].present?
  		@mangas = Manga.search(params[:query])
  	else
    	@mangas = Manga.order(:title)
  	end
 end

  def show
    @manga = Manga.find(params[:id])
  end
end