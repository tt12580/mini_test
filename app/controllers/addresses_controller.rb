class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit]

  def index
    @addresses = Address.all
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
        format.html { redirect_to addresses_path, notice: '地址新增成功。' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  private

  def address_params
    params.require(:address).permit(:title, :name)
  end

  def set_address
    @Address = Address.find(params[:id])
  end
end
