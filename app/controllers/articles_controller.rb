class ArticlesController < ApplicationController
  before_action :set_site

  def index
    @articles = Article.where(site: @site)
  end

  def show
  end

  private

  def set_site
    @site = Site.find(params[:site_id])
  end
end
