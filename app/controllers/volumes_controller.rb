class VolumesController < ApplicationController
	before_filter :authenticate_user!

  def show
    @volume = Manga::Volume.find(params[:id])
  end
end