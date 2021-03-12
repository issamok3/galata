class PhotosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @photos = Photo.where(site: @site)
  end

  def new
    @photo = Photo.new
  end

  def create
    @site = Site.find(params[:photo][:site_id])
    @photo = Photo.new(photo_params)
    @photo.site = @site
    @photo.user = current_user
    if @photo.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, photos: [])
  end
end
