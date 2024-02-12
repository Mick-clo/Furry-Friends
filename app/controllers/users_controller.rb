class UsersController < ApplicationController
  def update
    @user = current_user
    @user.update(user_params)
    redirect_to dashboard_pages_path
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
