class UsersController < ApplicationController

  def show
  end

  def edit
  end

  def update
    current_user.update(update_params)
    bypass_sign_in(current_user)
    redirect_to root_url
  end

  private
  def update_params
    params.require(:user).permit(:name, :email, :member_of, :profile, :works, :password)
  end

end
