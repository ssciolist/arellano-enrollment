class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def edit
    require 'pry'; binding.pry
    @student = Student.find(params[:id])
    render :edit
  end

  private

    def student_params
      params.require(:student).permit(:name)
    end
end
