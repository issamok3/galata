class DashboardsController < ApplicationController
  def show
    @my_uploads = Content.where(user: current_user)
  end
end
