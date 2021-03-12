class VideosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @videos = Video.where(site: @site)
  end
end
