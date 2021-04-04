class UsersController < ApplicationController
  def update
    @user = current_user
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to settings_path, notice: 'User was succesfully updated' }
      else
        format.html { redirect_to settings_path, notice: 'Please try again' }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :full_name, :age, :location, :locatable, :range, photos: [])
  end
end
