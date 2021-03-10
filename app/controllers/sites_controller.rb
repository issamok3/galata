class SitesController < ApplicationController
  def index
    if params[:query].present?
      @sites = Site.global_search(params[:query])
    else
      @sites = Site.all
    end
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
    params.require(:site).permit(:name, :description, :address, :rate, photos: [])
  end
end
