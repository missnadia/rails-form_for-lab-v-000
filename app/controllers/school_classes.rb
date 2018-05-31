class SchoolClassesController < ApplicationController

  def new
    @student_class = StudentClass.new
  end

  def create
    @student_class = StudentClass.new(post_params)
    @student_class.save
    redirect_to student_class_path(@student_class)
  end

  def show
    @student_classes = StudentClass.all
  end

  def edit
    @student_class = StudentClass.find(params[:id])
  end

  def update
  end
end
