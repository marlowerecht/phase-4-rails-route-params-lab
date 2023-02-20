class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def find_by_name name
    students = Student.filter { |student| student.first_name.include?(name)}
    render json: students
  end

end
