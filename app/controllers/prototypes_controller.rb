class PrototypesController < ApplicationController
  before_action :move_to_root, only:[:new, :create]
  before_action :set_prototype, only:[:show, :edit, :update, :destroy]

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      flash[:success] = "プロトタイプを投稿しました！"
      redirect_to root_url
    else
      flash.now[:danger] = "プロトタイプの投稿に失敗しました！内容を確認してください。"
      render :new
    end
  end

  def show
    @user = @prototype.user
  end

  def edit
  end

  def update
    if @prototype.update(prototype_params)
      flash[:success] = "プロトタイプを更新しました！"
      redirect_to root_url
    else
      flash.now[:danger] = "プロトタイプの更新に失敗しました！入力内容を確認してください。"
      render :edit
    end
  end

  def destroy
    if @prototype.destroy
      flash[:success] = "プロトタイプを削除しました！"
      redirect_to root_url
    else
      flash.now[:danger] = "プロトタイプの削除に失敗しました。"
      redirect_to root_url
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      :user_id,
      captured_images_attributes: [:id, :image, :position])
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def move_to_root
    redirect_to root_path unless user_signed_in?
  end

end
