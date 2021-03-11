class SitesController < ApplicationController
  before_action :set_site, only: [:videos, :audios, :articles, :photos]

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    @site.user = User.first
    if @site.save!
      redirect_to site_path(@site)
    else
      render :new
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    redirect_to sites_path
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
