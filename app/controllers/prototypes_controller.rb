class PrototypesController < ApplicationController

  def index
  end

  def new
    @prototype = Prototype.new
    4.times {@prototype.captured_images.build}
  end

  def create

    result = Prototype.create(create_params)
    binding.pry
    #if result == true
      flash[:success] = "プロトタイプを投稿しました！"
      redirect_to root_url
    #else
    #  flash.now[:danger] = "プロトタイプの投稿に失敗しました！内容を確認してください。"
    #  render :new
    #end
  end

  def show
  end

  private
  def create_params
    # params.require(:prototype).permit(thumbnails_attributes: [:image])
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      captured_images_attributes: [:image])
  end

end
