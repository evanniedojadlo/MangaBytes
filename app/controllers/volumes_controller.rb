class VolumesController < ApplicationController
  def index
    @volumes = Volume.order(:volume_ids)
  end

  def show
    @volumes = Volume.find(params[:id])
  end
end