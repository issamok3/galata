class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @sites = Site.all
    if params["categories"]
      sites_array = @sites.select { |site| params["categories"].include?(site.category_list) }
      @sites = Site.where(id: sites_array.map(&:id))
    elsif params["location"]
      @sites = Site.near(current_user.location, 2)
    elsif params["latitude"] && params["longitude"]
      @sites = Site.near([params["latitude"].to_f, params["longitude"].to_f], 0.5)
    end
    @markers = @sites.geocoded.map do |site|
      {
        lat: site.latitude,
        lng: site.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { site: site })
      }
    end
  end
end
