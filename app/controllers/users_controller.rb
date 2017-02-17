class UsersController < ApplicationController
  def edit
    @user = current_user
  end
  def update
    @user = current_user

    @user.update(user_params)
    if @user.save
      redirect_to root_path
    else
      redirect_to edit_user_path
    end
  end
private
    def user_params
      params.require(:user).permit(:email, :user_name, :admin)
    end
end
