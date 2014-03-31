class VolumesController < ApplicationController
	before_filter :authenticate_user!

  def index
    @volume_images = Images.order(:volume_images)
  end

  def show
    @volume_image = Images.find(params[:id])
  end
end