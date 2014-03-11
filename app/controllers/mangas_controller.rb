class MangasController < ApplicationController
  def index
    @mangas = Manga.order(:title)
  end

  def show
    @mangas = Manga.find(params[:id])
  end
end