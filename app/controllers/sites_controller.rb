class SitesController < ApplicationController

  def index
    @sites = Site.near(current_user.address, 5)
  end

  def show
    @site = Site.find(params[:id])
  end

  private

  def site_params
    params.require(:site).permit(:name, :address, :description, photos: [])
  end
end
