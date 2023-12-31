
class ApplicationController < ActionController::Base
  include ApplicationHelper
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email,:encrypted_password,:phone_number, :description, :profile_picture])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name,  :email,:phone_number, :description, :profile_picture])
    end
    
end
