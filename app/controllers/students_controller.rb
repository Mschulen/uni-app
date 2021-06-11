class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    student_new
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to students_path
  end 

  def edit
    student_new
  end

  def update
    student_new

    if @student.update(student_params)
      flash[:notice] = "You have successfully updated your profile."
      redirect_to @student
    else
      render 'edit'
    end
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:success] = "Student created."
      redirect_to students_path
    else
      render 'students/new'
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email)
  end

  def student_new
    @student = Student.find(params[:id])
  end
end