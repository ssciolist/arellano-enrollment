class AddressesController < ApplicationController
  def index
    @addresss = Address.all
    render :index
  end

  def new
    
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to address_path(@address)
    else
      render :new
    end
  end

  def show
    @address = Address.find(params[:id])
    render :show
  end

  def edit
    @address = Address.find(params[:id])
    render :edit
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    redirect_to address_path(@address)
  end

  def destroy
    Address.find(params[:id]).destroy
    redirect_to addresss_path
  end

  private

    def address_params
      params.require(:address).permit(:name)
    end
end
