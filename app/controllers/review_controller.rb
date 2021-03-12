class ReviewController < ApplicationController
  def create
    @content = Teacher.find(params[:content_id])
    @review = Review.new(review_params)
    @review.teacher = @teacher
    
    if @review.save
      redirect_to content_path(@content)
    else
      render 'content/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
