class ArticlesController < ApplicationController
  before_action :set_site

  def index
    @articles = Article.where(site: @site)
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def set_site
    @site = Site.find(params[:site_id])
  end
end
