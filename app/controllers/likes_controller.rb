class LikesController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @user = current_user
    @like = Like.new
    @like.content = @content
    @like.user = @user
    @like.save
    case @content.type
    when 'Article'
      redirect_to site_articles_path(@content.site)
    when 'Photo'
      redirect_to site_photos_path(@content.site)
    when 'Audio'
      redirect_to site_audios_path(@content.site)
    when 'Video'
      redirect_to site_videos_path(@content.site)
    end
  end
end
