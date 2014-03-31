class VolumesController < ApplicationController
	before_filter :authenticate_user!

  def index
    @volumes = Volume.order(:volume_ids)
  end

  def show
    @volumes = Volume.find(params[:id])
  end
end