class PhotosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @photos = Photo.where(site: @site)
  end
end
