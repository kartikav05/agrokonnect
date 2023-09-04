class UsersProfilesController < ApplicationController
    before_action :authenticate_user!
  
    def edit
    end

    def show
        @user = current_user
      end



  
    def update
      if current_user.update(user_params)
        redirect_to edit_users_profile_path, notice: 'Profile updated successfully.'
      else
        render :edit
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :phone_number, :profile_picture, :description, :password, :password_confirmation, :current_password)
    end
  end
  
