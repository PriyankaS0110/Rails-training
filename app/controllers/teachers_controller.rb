class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[show edit update destroy]

  def index
    @teachers = Teacher.find_each
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teachers_path , notice: 'Teacher has been created Successfully'
    else
      render :new
    end
  end


  def show
  end

  def edit 
  end

  def update
    if @teacher.update( teacher_params)

      redirect_to teachers_path, notice: 'Teacher has been Edited Successfully'
    else
      render :edit
    end
  end
  
  def destroy 
    @teacher.destroy
    redirect_to root_path , notice: 'Teacher has been Deleted Successfully'
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :student_email)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
