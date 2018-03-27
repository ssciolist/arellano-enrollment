class AddressesController < ApplicationController
  def index
    @addresss = Address.all
    render :index
  end

  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(address_params)
    if @student.save
      redirect_to student_address_path(@student)
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:student_id]).id
    @addresses = @student.addresses.all
    render :show
  end

  private

    def address_params
      params.require(:address).permit(:description, :street, :city, :state, :zip_code, :student_id)
    end

end
