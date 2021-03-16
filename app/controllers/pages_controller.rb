class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @sites = Site.all
    @users = User.all
    @markers = @sites.geocoded.map do |site|
      {
        lat: site.latitude,
        lng: site.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { site: site })
      }
    end
    @users.geocoded.map do |user|
      @markers << {
        lat: user.latitude,
        lng: user.longitude,
        image_url: "https://kitt.lewagon.com/placeholder/users/#{user.username}"
      }
    end
  end
end

