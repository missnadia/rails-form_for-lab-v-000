class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @students = Student.all
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(post_params)
    redirect_to student_path(@student)
  end

  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end
end
