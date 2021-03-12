class PhotosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @photos = Photo.where(site: @site)
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to dashboard_path
  end
end
