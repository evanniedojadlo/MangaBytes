class MangasController < ApplicationController
	before_filter :authenticate_user!

  def index
    @mangas = Manga.order(:title)
  end

  def show
    @manga = Manga.find(params[:id])
  end
end