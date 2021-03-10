class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @sites = Site.all
    @markers = @sites.geocoded.map do |site|
      {
        lat: site.latitude,
        lng: site.longitude
      }
    end
  end
end
