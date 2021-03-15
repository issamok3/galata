class VideosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @videos = Video.where(site: @site)
  end

  def new
    @video = Video.new
  end

  def create
    @site = Site.find(params[:video][:site_id])
    @video = Video.new(video_params)
    @video.site = @site
    @video.user = current_user
    if @video.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
   @video = Video.find(params[:id])
   @video.destroy
   redirect_to dashboard_path
  end

  private

  def video_params
    params.require(:video).permit(:title, :description, :url)
  end
end
