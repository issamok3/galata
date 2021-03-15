class UsersController < ApplicationController
  def update
    @user = current_user
    @user.update(trainer_params)
  end

  private

  def trainer_params
    params.require(@users).permit(:location)
  end
end
