class ReviewsController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @review = Review.new(review_params)
    @review.content = @content
    
    if @review.save
      redirect_to content_reviews_path(@content)
    else
      render 'content/show'
    end
  end

  def index
    @content = Content.find(params[:content_id])
    @reviews = @content.reviews
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:feedback)
  end
end
