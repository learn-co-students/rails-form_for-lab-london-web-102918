class StudentsController < ApplicationController
   before_action :set_student, only: [:show, :edit, :update]
# new, create, show, edit, and update

  def index
    @students = Student.all
  end

  def show

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end


  def edit

  end

  def update
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end


# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action

  def student_params(*args)
  params.require(:student).permit(*args)
  end

end
