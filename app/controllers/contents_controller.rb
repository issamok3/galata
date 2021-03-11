class ContentsController < ApplicationController
  def show
    @article = Content.find(params[:id])
  end
end
