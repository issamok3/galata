class ArticlesController < ApplicationController
  before_action :set_site, except: [:new, :create, :destroy]

  def index
    @articles = Article.where(site: @site)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @site = Site.find(params[:article][:site_id])
    @article = Article.new(article_params)
    @article.site = @site
    @article.user = current_user
    if @article.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to dashboard_path
  end

  private

  def set_site
    @site = Site.find(params[:site_id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :body)
  end
end
