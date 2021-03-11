class VideosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @videos = Video.where(site: @site)
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to dashboard_path
  end
end
