class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @students = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new
      @student.update(params.require(:student))
      redirect_to student_path(@student)

  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end
end
