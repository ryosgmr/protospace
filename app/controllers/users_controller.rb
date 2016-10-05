class UsersController < ApplicationController

  def show
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to root_path
  end

  private
  def update_params
    params.require(:user).permit(:name, :email, :member_of, :profile, :works, :password)
  end

end
