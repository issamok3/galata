class AudiosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @audios = Audio.where(site: @site)
  end

end
