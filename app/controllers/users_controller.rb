class UsersController < ApplicationController

  before_action :move_to_root, only: :edit

  def show
    @user = User.find(params[:id])
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

  def move_to_root
    redirect_to root_path unless user_signed_in?
  end

end
