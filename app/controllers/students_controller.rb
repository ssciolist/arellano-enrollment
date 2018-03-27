class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def new
    @student = Student.new
  end

  def create
    require 'pry'; binding.pry
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  private

    def student_params
    end
end
