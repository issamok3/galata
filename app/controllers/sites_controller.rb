class SitesController < ApplicationController
  before_action :set_site, only: [:videos, :audios, :articles, :photos]

  def index
    @sites = Site.near(current_user.address, 5)
  end

  def show
    @site = Site.find(params[:id])
  end
  
  def videos
    @videos = Content.where(site: @site, category: 'video')
  end

  def audios
    @audios = Content.where(site: @site, category: 'audio')
  end

  def articles
    @articles = Content.where(site: @site, category: 'article')
  end

  def photos
    @photos = Content.where(site: @site, category: 'photo')
  end

  private

  def site_params
    params.require(:site).permit(:name, :address, :description, photos: [])
  end

  def set_site
    @site = Site.find(params[:id])
  end
end
