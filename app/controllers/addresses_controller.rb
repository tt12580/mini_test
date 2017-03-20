class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    @addresses = Address.all
    @pictures = Picture.page(params[:page]).per(8)
  end

  def new
    @address = Address.new
  end

  def edit
  end

  def show
  end

  def create
    @address = Address.new(address_params)
    respond_to do |format|
      if @address.save
        format.html {
          redirect_to addresses_path
        }
        format.js {
          flash[:success] = '地址新增成功。'
        }
      else
        format.html {
          render :new
        }
        format.js {
          flash[:danger] = '地址添加失败。'
        }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @address.update_attributes(address_params)
        format.html {
          redirect_to addresses_path
        }
        format.js {
          flash[:success] = '地址更新成功。'
        }
      else
        format.html {
          render :edit
        }
        format.js {
          flash[:danger] = '地址更新失败。'
        }
      end
    end
  end

  def destroy
    if @address.destroy
      flash[:success] = "删除成功。"
    else
      flash[:danger] = "删除失败。"
    end
      redirect_to addresses_path
  end

  private

  def address_params
    params.require(:address).permit(:title, :name, :image, :image_src)
  end

  def set_address
    @address = Address.find(params[:id])
  end
end
