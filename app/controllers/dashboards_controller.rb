class DashboardsController < ApplicationController
  def show
    @articles = Article.where(user: current_user)
    @photos = Photo.where(user: current_user)
    @audios = Audio.where(user: current_user)
    @videos = Video.where(user: current_user)
  end
end
