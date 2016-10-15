class PrototypesController < ApplicationController
  before_action :move_to_root, only:[:new, :create]

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    @prototype = Prototype.new(create_params)
    if @prototype.save
      flash[:success] = "プロトタイプを投稿しました！"
      redirect_to root_url
    else
      flash.now[:danger] = "プロトタイプの投稿に失敗しました！内容を確認してください。"
      render :new
    end
  end

  def show
    @prototype = Prototype.find(params[:id])
    @user = @prototype.user
  end

  private
  def create_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      :user_id,
      captured_images_attributes: [:image, :position])
      binding.pry
  end

  def move_to_root
    redirect_to root_path unless user_signed_in?
  end

end
