class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.page(params[:page]).per(8)
  end

  def new
    @picture = Picture.new
  end

  def edit
  end

  def show
  end

  def create
    @picture = Picture.new(picture_params)
    respond_to do |format|
      if @picture.save
        format.html {
          flash[:success] = '新增成功。'
          redirect_to pictures_url
        }
        format.js
      else
        format.html {
          flash[:danger] = '添加失败。'
          render :new
        }
        format.js
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @picture.update_attributes(picture_params)
        format.html {
          flash[:success] = '更新成功。'
          redirect_to pictures_path
        }
        format.js
      else
        format.html {
          flash[:danger] = '更新失败。'
          render :edit
        }
        format.js
      end
    end
  end

  def destroy
    if @picture.destroy
      flash[:success] = "删除成功。"
    else
      flash[:danger] = "删除失败。"
    end
      redirect_to pictures_path
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :name)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
