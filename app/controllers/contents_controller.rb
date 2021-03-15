class ContentsController < ApplicationController
  def index
    @content = Content.all
  end

  def show
    @content = Content.find(params[:id])
    @review = Review.new
  end
end
