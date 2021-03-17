class SitesController < ApplicationController

  def index
    @sites = Site.near(current_user.location, current_user.range)
  end

  def show
    @site = Site.find(params[:id])
  end

  private

  def site_params
    params.require(:site).permit(:name, :address, :description, :category, photos: [])
  end
end
