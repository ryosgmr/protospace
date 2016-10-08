class UsersController < ApplicationController

  before_action :move_to_root, only: :edit

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user = User.find(current_user)
    result = @user.update(update_params)
    if result == true
      bypass_sign_in(@user)
      redirect_to root_url, success: "プロフィールを更新しました！"
    else
      flash.now[:danger] = "プロフィールの更新に失敗しました！入力内容を確認してください。"
      render :edit
    end
  end

  private
  def update_params
    params.require(:user).permit(:name, :email, :member_of, :profile, :works, :password)
  end

  def move_to_root
    redirect_to root_path unless user_signed_in?
  end

end
