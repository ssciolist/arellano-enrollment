class AddressesController < ApplicationController
  def index
    @addresss = Address.all
    render :index
  end

  def new
    require 'pry'; binding.pry
    @address = Address.new
  end

  def create

  end



end
