class StudentsController < ApplicationController

  def index
    @students = Students.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update({
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name]
    })
    redirect_to @student
  end

  def create
    @student = Student.new({
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name]
    })
    @student.save
    redirect_to @student
  end

end
