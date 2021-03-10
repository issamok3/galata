class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :address, :locatable, :username])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :address, :locatable, :username])
  # end
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) do |user_params|
  #   user_params.permit({ locatable: [] }, :email, :password, :password_confirmation, :usernmae, :full_name, :address)
  #   end
  # end
end
