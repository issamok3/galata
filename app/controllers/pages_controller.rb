class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @sites = Site.all
    @users = User.where(locatable: true)
    if params["categories"]
      sites_array = @sites.select { |site| params["categories"].include?(site.category_list) }
      @sites = Site.where(id: sites_array.map(&:id))
    elsif params["location"]
      @sites = Site.near(current_user.location, current_user.range)
    elsif params["latitude"] && params["longitude"]
      @sites = Site.near([params["latitude"].to_f, params["longitude"].to_f], current_user.range)
    end
    if @sites.empty?
      redirect_to root_path, notice: "There are no sites near you"
    else
      @site_markers = @sites.geocoded.map do |site|
        {
          lat: site.latitude,
          lng: site.longitude,
          infoWindow: render_to_string(partial: "info_window_sites", locals: { site: site })
        }
      end
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

