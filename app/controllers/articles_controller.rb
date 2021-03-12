class ArticlesController < ApplicationController
  before_action :set_site, except: :new

  def index
    @articles = Article.where(site: @site)
  end

  def show
  end

  def new
    @article = Article.new
  end

  private

  def set_site
    @site = Site.find(params[:site_id])
  end
end
