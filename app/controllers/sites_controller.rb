class SitesController < ApplicationController
  def index
    @sites = Site.near(current_user.address, 5)
  end

  def show
    @site = Site.find(params[:id])
  end
  
  def videos
    @site = Site.find(params[:id])
    @videos = Content.where(site: @site, category: 'video')
  end

  def audios
    @site = Site.find(params[:id])
    @audios = Content.where(site: @site, category: 'audio')
  end

  def articles
    @site = Site.find(params[:id])
    @articles = Content.where(site: @site, category: 'article')
  end

  def photos
    @site = Site.find(params[:id])
    @photos = Content.where(site: @site, category: 'photo')
  end

  private

  def site_params
    params.require(:site).permit(:name, :address, :description, photos: [])
  end
end
