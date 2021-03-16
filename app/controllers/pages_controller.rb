class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @sites = Site.all
    @users = User.all
    @site_markers = @sites.geocoded.map do |site|
      {
        lat: site.latitude,
        lng: site.longitude,
        infoWindow: render_to_string(partial: "info_window_sites", locals: { site: site })
      }
    end
    @user_markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        image_url: "https://kitt.lewagon.com/placeholder/users/#{user.username}",
        infoWindow: render_to_string(partial: "info_window_users", locals: { user: user })
      }
    end
  end
end

