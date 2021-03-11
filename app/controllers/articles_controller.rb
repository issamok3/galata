class ArticlesController < ApplicationController

  def index
    @site = Site.find(params[:site_id])
    @articles = Article.where(site: @site)
  end

  def show
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to dashboard_path
  end
end
