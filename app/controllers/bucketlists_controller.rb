class BucketlistsController < ApplicationController
  def show
    @articles = Article.joins(:likes).where(likes: { user: current_user })
    @photos = Photo.joins(:likes).where(likes: { user: current_user })
    @audios = Audio.joins(:likes).where(likes: { user: current_user })
    @videos = Video.joins(:likes).where(likes: { user: current_user })
  end
end
